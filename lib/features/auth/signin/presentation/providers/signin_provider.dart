import 'package:flutter/material.dart';

import '../../../../dashboard/presentation/screens/dashboard_screen.dart';

class SigninProvider extends ChangeNotifier {
  void onSignIn(BuildContext context) {
    Navigator.of(context).pushNamed(DashboardScreen.routeName);
    // if (!(_key.currentState?.validate() ?? false)) return;
    // try {
    //   _onLoadingUpdate(true);
    //   // TODO: ON SIGNIN
    // } catch (e) {
    //   debugPrint(e.toString());
    // }
    // _onLoadingUpdate(false);
  }

  void onForgetPassword(BuildContext context) {
    // TODO: ON FORGET PASSWORD
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
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  // Key
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  // Bool
  bool _isLoading = false;
}
