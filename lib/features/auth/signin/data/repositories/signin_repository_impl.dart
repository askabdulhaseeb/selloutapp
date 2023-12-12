import '../../domain/repositories/signin_repository.dart';
import '../params/signin_param.dart';
import '../sources/apis/signin_api.dart';

class SignInRepositoryImpl extends SignInRepository {
  SignInRepositoryImpl(this._authAPI);
  final SignInAPI _authAPI;

  @override
  Future<bool> signin(SignInParam param) async {
    try {
      return await _authAPI.signin(param: param);
    } catch (e) {
      return false;
    }
  }
}
