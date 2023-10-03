import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../features/auth/signin/presentation/providers/signin_provider.dart';
import '../../features/auth/signup/presentation/providers/signup_provider.dart';
import '../../features/cart/provider/cart_provider.dart';
import '../../features/listing/provider/listing_provider.dart';
import '../../features/payment/provider/payment_provider.dart';
import '../../features/promo/create_promo/presentation/providers/create_promo_provider.dart';
import '../../features/review/give_review/presentation/providers/give_review_provider.dart';

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
