import 'package:flutter/material.dart';
import 'package:selloutapp/featuers/cart/display_cart/presentation/screens/display_cart_screen.dart';
import 'package:selloutapp/featuers/listing/create_listing/presentation/screens/create_listing_screen.dart';
import 'package:selloutapp/featuers/listing/display_listings/presentation/screens/display_listings_screen.dart';

import '../../featuers/auth/signin/presentation/screens/signin_screen.dart';
import '../../featuers/auth/signup/presentation/screens/signup_screen.dart';

final Map<String, WidgetBuilder> myRoutes = <String, WidgetBuilder>{
  // AUTH
  SigninScreen.routeName: (_) => const SigninScreen(),
  SignupScreen.routeName: (_) => const SignupScreen(),
  // DASHBOARD
  // LISTING
  CreateListingsScreen.routeName: (_) => const CreateListingsScreen(),
  DisplayListingsScreen.routeName: (_) => const DisplayListingsScreen(),
  // CART
  DisplayCartScreen.routeName: (_) => const DisplayCartScreen(),
};
