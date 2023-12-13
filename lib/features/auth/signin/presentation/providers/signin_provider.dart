import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../../core/sources/locals/local_db.dart';
import '../../data/params/signin_param.dart';
import '../../domain/usecases/get_signin_usecase.dart';

class SignInProvider extends ChangeNotifier {
  SignInProvider(this._getSigninUsecase);
  final GetSignInUsecase _getSigninUsecase;
  //
  Future<void> onSignIn(BuildContext context) async {
    if (!(_key.currentState?.validate() ?? false)) return;
    try {
      _onLoadingUpdate(true);
      final SignInParam param = SignInParam(
        email: _email.text,
        password: _password.text,
        context: context,
      );
      final bool result = await _getSigninUsecase.call(param: param);
      if (result) {
        debugPrint('Result: $result');
        debugPrint(LocalDB.accessToken());
        debugPrint(LocalDB.refreshToken());
        // TODO: On Login Done
      } else {
        debugPrint('Result: $result');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    _onLoadingUpdate(false);
  }

  void _onLoadingUpdate(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  //
  // GETTERS
  //
  TextEditingController get email => _email;
  TextEditingController get password => _password;
  GlobalKey<FormState> get key => _key;
  bool get isLoading => _isLoading;
  //
  // VARIABLES
  //
  // TextEditingController
  final TextEditingController _email =
      TextEditingController(text: kDebugMode ? 'abaidmalik243@gmail.com' : '');
  final TextEditingController _password =
      TextEditingController(text: kDebugMode ? '123456' : '');
  // Key
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  // Bool
  bool _isLoading = false;
}
