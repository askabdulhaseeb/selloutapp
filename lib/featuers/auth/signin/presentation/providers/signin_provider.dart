import 'package:flutter/material.dart';

class SigninProvider extends ChangeNotifier {
  void onSignIn(BuildContext context) {
    if (!(_key.currentState?.validate() ?? false)) return;
    // TODO: ON SIGNIN
  }

  void onForgetPassword(BuildContext context) {
    // TODO: ON FORGET PASSWORD
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
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  // Key
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  // Bool
  bool _isLoading = false;
}
