import 'package:flutter/material.dart';

import '../../featuers/auth/signin/presentation/screens/signin_screen.dart';
import '../../featuers/auth/signup/presentation/screens/signup_screen.dart';
import '../../featuers/cart/display_cart/presentation/screens/display_cart_screen.dart';
import '../../featuers/listing/create_listing/presentation/screens/create_listing_screen.dart';
import '../../featuers/listing/display_listings/presentation/screens/display_listings_screen.dart';
import '../../featuers/payment/display_payment/presentation/screens/display_payable_payment_screen.dart';
import '../../featuers/promo/create_promo/presentation/screens/create_promo_screen.dart';
import '../../featuers/promo/display_promo/presentation/screens/display_promo_screen.dart';
import '../../featuers/review/display_review/presentation/screens/display_review_screen.dart';
import '../../featuers/review/give_review/presentation/screens/give_review_screen.dart';
import '../../featuers/user/display_profile/display_profile_screen.dart';
import '../../featuers/user/edit_profile/presentation/screens/edit_profile_screen.dart';

final Map<String, WidgetBuilder> myRoutes = <String, WidgetBuilder>{
  // AUTH
  SigninScreen.routeName: (_) => const SigninScreen(),
  SignupScreen.routeName: (_) => const SignupScreen(),
  // DASHBOARD
  // USER
  DisplayProfileScreen.routeName: (_) => const DisplayProfileScreen(),
  EditProfileScreen.routeName: (_) => const EditProfileScreen(),
  // LISTING
  CreateListingsScreen.routeName: (_) => const CreateListingsScreen(),
  DisplayListingsScreen.routeName: (_) => const DisplayListingsScreen(),
  // PROMO
  CreateProMoScreen.routeName: (_) => const CreateProMoScreen(),
  DisplayProMoScreen.routeName: (_) => const DisplayProMoScreen(),
  // CART
  DisplayCartScreen.routeName: (_) => const DisplayCartScreen(),
  // PAYMENT
  DisplayPayablePaymentScreen.routeName: (_) =>
      const DisplayPayablePaymentScreen(),
  // REVIEW
  GiveReviewScreen.routeName: (_) => const GiveReviewScreen(),
  DisplayReviewScreen.routeName: (_) => const DisplayReviewScreen(),
};
