import '../../data/params/signin_param.dart';

abstract class SignInRepository {
  Future<bool> signin(SignInParam param);
}
