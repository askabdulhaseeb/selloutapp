import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:selloutapp/featuers/cart/provider/cart_provider.dart';
import 'package:selloutapp/featuers/listing/provider/listing_provider.dart';
import 'package:selloutapp/featuers/promo/create_promo/presentation/providers/create_promo_provider.dart';
import 'package:selloutapp/featuers/review/give_review/presentation/providers/give_review_provider.dart';

import '../../featuers/auth/signin/presentation/providers/signin_provider.dart';
import '../../featuers/auth/signup/presentation/providers/signup_provider.dart';
import '../../featuers/payment/provider/payment_provider.dart';

List<SingleChildWidget> get myProviders => <SingleChildWidget>[
      ChangeNotifierProvider<SigninProvider>.value(value: SigninProvider()),
      ChangeNotifierProvider<SignupProvider>.value(value: SignupProvider()),
      // LISTING
      ChangeNotifierProvider<ListingProvider>.value(value: ListingProvider()),
      // PROMO
      ChangeNotifierProvider<CreateProMoProvider>.value(
          value: CreateProMoProvider()),
      // CART
      ChangeNotifierProvider<CartProvider>.value(value: CartProvider()),
      // PAYMENT
      ChangeNotifierProvider<PaymentProvider>.value(value: PaymentProvider()),
      // REVIEW
      ChangeNotifierProvider<GiveReviewProvider>.value(
          value: GiveReviewProvider()),
    ];
