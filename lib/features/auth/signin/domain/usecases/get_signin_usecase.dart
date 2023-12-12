import '../../data/params/signin_param.dart';
import '../repositories/signin_repository.dart';

class GetSignInUsecase {
  GetSignInUsecase(this._signInRepository);
  final SignInRepository _signInRepository;

  Future<bool> call({required SignInParam param}) {
    return _signInRepository.signin(param);
  }
}
