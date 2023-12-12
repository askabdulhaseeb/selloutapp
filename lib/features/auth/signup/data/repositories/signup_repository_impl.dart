import '../../domain/repositories/signup_repository.dart';
import '../params/signup_param.dart';
import '../sources/apis/signup_api.dart';

class SignUpRepositoryImpl extends SignUpRepository {
  SignUpRepositoryImpl(this._api);
  final SignUpAPI _api;

  @override
  Future<bool> signup(SignUpParam param) async {
    return await _api.signup(param);
  }
}
