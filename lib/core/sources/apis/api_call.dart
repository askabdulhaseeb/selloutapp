import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../enums/api_request_type.dart';
import '../../utils/consts.dart';
import '../locals/local_db.dart';
import 'data_state.dart';

class ApiCall<T> {
  Future<DataState<T>> data({
    required String url,
    required ApiRequestType requestType,
    required String? body,
  }) async {
    try {
      final Map<String, String> headers = <String, String>{};

      final http.Request request =
          http.Request(requestType.json, Uri.parse(url));

      if (body != null && body.isNotEmpty) {
        request.body = body;
      }
      request.headers.addAll(headers);
      http.StreamedResponse response = await request.send();
      if (response.statusCode == 200 || response.statusCode == 201) {
        final String data = await response.stream.bytesToString();
        if (data.isEmpty) {
          log('❌ ERROR: ERROR: No Data Found - API: $url');
          return DataFailer<T>(CustomException('ERROR: No Data Found'));
        } else {
          debugPrint('👉🏻 API FUN: Success url - $url');
          return DataSuccess<T>(data, null);
        }
      } else if (response.statusCode >= 400) {
        await _refresh();
        return data(url: url, requestType: requestType, body: body);
      } else {
        log('❌ ERROR: ${response.reasonPhrase} - API: $url');
        return DataFailer<T>(
            CustomException(response.reasonPhrase ?? 'ERROR: try again later'));
      }
      //
    } catch (e) {
      if (e is http.ClientException) {
        log('❌ ERROR - HTTP Client Exception: ${e.message} - API: $url');
        return DataFailer<T>(CustomException(e.message));
      } else if (e is SocketException) {
        log('❌ ERROR: ${e.message} - API: $url');
        return DataFailer<T>(CustomException('No Internet Connected'));
      } else {
        log('❌ ERROR: $e - API: $url');
        return DataFailer<T>(CustomException(e.toString()));
      }
    }
  }

  Future<DataState<T>> storage() async {
    try {
      //
    } catch (e) {
      // print(e);
    }
    return DataFailer<T>(CustomException('Something goes wrong!!!'));
  }

  Future<void> _refresh() async {
    final Map<String, String> data = <String, String>{
      'accessToken': LocalDB.accessToken() ?? '',
      'refreshToken': LocalDB.refreshToken() ?? ''
    };

    final http.Request request = http.Request(
        ApiRequestType.post.json, Uri.parse('$kBaseURL/refresh_token'));
    request.body = json.encode(data);
    request.headers
        .addAll(<String, String>{'Content-Type': 'application/json'});
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200 || response.statusCode == 201) {
      final String data = await response.stream.bytesToString();
      if (data.isNotEmpty) {
        List<dynamic> list = json.decode(data);
        final String accessToken = list[0]['data']['accessToken'];
        final String refreshToken = list[0]['data']['refreshToken'];
        await LocalDB.setAccessToken(accessToken);
        await LocalDB.setRefreshToken(refreshToken);
      }
    }
  }
}
