import 'package:flutter/material.dart';

class SignupProvider extends ChangeNotifier {
  void onSignup(BuildContext context) {
    if (!(_key.currentState?.validate() ?? false)) return;
    try {
      _onLoadingUpdate(true);
      // TODO: ON SIGNUP
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
  TextEditingController get name => _name;
  TextEditingController get username => _username;
  TextEditingController get email => _email;
  TextEditingController get password => _password;
  TextEditingController get confirmPassword => _confirmPassword;

  GlobalKey<FormState> get key => _key;
  bool get isLoading => _isLoading;
  //
  // VARIABLES
  //
  // TextEditingController
  final TextEditingController _name = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  // Key
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  // Bool
  bool _isLoading = false;
}
