import 'package:flutter/material.dart';

import '../../featuers/auth/signin/presentation/screens/signin_screen.dart';
import '../../featuers/auth/signup/presentation/screens/signup_screen.dart';

final Map<String, WidgetBuilder> myRoutes = <String, WidgetBuilder>{
  // AUTH
  SigninScreen.routeName: (_) => const SigninScreen(),
  SignupScreen.routeName: (_) => const SignupScreen(),
  // DASHBOARD
};
