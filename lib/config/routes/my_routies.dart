import 'package:flutter/material.dart';

import '../../features/auth/signin/presentation/screens/signin_screen.dart';
import '../../features/auth/signup/presentation/screens/account_type_screen.dart';
import '../../features/auth/signup/presentation/screens/business_info_input_screen.dart';
import '../../features/auth/signup/presentation/screens/signup_screen.dart';
import '../../features/cart/display_cart/presentation/screens/display_cart_screen.dart';
import '../../features/dashboard/presentation/screens/dashboard_screen.dart';
import '../../features/listing/create_listing/presentation/screens/create_listing_screen.dart';
import '../../features/listing/display_listings/presentation/screens/display_listings_screen.dart';
import '../../features/payment/display_payment/presentation/screens/display_payable_payment_screen.dart';
import '../../features/promo/create_promo/presentation/screens/create_promo_screen.dart';
import '../../features/promo/display_promo/presentation/screens/display_promo_screen.dart';
import '../../features/review/display_review/presentation/screens/display_review_screen.dart';
import '../../features/review/give_review/presentation/screens/give_review_screen.dart';
import '../../features/user/display_profile/display_profile_screen.dart';
import '../../features/user/edit_profile/presentation/screens/edit_profile_screen.dart';

final Map<String, WidgetBuilder> myRoutes = <String, WidgetBuilder>{
  // AUTH
  SigninScreen.routeName: (_) => const SigninScreen(),
  SignupScreen.routeName: (_) => const SignupScreen(),
  AccountTypeScreen.routeName: (_) => const AccountTypeScreen(),
  BusinessInfoInputScreen.routeName: (_) => const BusinessInfoInputScreen(),
  // DASHBOARD
  DashboardScreen.routeName: (_) => const DashboardScreen(),
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
