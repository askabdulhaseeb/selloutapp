import '../../data/params/signup_param.dart';
import '../repositories/signup_repository.dart';

class GetSignUpUsecase {
  const GetSignUpUsecase(this._repository);
  final SignUpRepository _repository;

  Future<bool> signup(SignUpParam param) async {
    return await _repository.signup(param);
  }
}
