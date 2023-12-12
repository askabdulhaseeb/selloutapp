import '../../../../../../core/sources/apis/api_call.dart';
import '../../../../../../core/sources/apis/data_state.dart';
import '../../../../../../core/utils/consts.dart';
import '../../../../../../enums/api_request_type.dart';
import '../../params/signup_param.dart';

abstract class SignUpAPI {
  Future<bool> signup(SignUpParam param);
}

class SignUpAPIImpl extends SignUpAPI {
  @override
  Future<bool> signup(SignUpParam param) async {
    final String url = '$kBaseURL/signup';

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
