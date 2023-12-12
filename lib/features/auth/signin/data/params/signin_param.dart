import 'dart:convert';

import 'package:flutter/material.dart';

class SignInParam {
  SignInParam({
    required this.email,
    required this.password,
    required this.context,
  });

  final String email;
  final String password;
  final BuildContext context;

  String get body => json.encode(_toMap());

  Map<String, dynamic> _toMap() {
    return <String, dynamic>{'email': email, 'password': password};
  }
}
