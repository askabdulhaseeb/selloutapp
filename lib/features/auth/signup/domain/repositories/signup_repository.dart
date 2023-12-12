import '../../data/params/signup_param.dart';

abstract class SignUpRepository {
  Future<bool> signup(SignUpParam param);
}
