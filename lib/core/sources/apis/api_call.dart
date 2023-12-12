import '../../../enums/api_request_type.dart';
import 'data_state.dart';

class ApiCall<T> {
  Future<DataState<T>> data({
    required String url,
    required ApiRequestType requestType,
    required String? body,
  }) async {
    try {
      //
    } catch (e) {
      // print(e);
    }
    return DataFailer<T>(CustomException('Something goes wrong!!!'));
  }

  Future<DataState<T>> storage() async {
    try {
      //
    } catch (e) {
      // print(e);
    }
    return DataFailer<T>(CustomException('Something goes wrong!!!'));
  }
}
