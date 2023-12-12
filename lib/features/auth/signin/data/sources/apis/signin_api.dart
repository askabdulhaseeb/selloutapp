import '../../../../../../core/sources/apis/api_call.dart';
import '../../../../../../core/sources/apis/data_state.dart';
import '../../../../../../core/utils/consts.dart';
import '../../../../../../enums/api_request_type.dart';
import '../../params/signin_param.dart';

abstract class SignInAPI {
  Future<bool> signin({required SignInParam param});
}

class SignInAPIImpl extends SignInAPI {
  @override
  Future<bool> signin({required SignInParam param}) async {
    final String url = '$kBaseURL/signin';

    final DataState<String> state = await ApiCall<String>().data(
      url: url,
      requestType: ApiRequestType.post,
      body: param.body,
    );

    if (state is DataSuccess && state.data != null) {
      return true;
    } else {
      return false;
    }
  }
}
