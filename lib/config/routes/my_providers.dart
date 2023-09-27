import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../featuers/auth/signin/presentation/providers/signin_provider.dart';
import '../../featuers/auth/signup/presentation/providers/signup_provider.dart';

List<SingleChildWidget> get myProviders => <SingleChildWidget>[
      ChangeNotifierProvider.value(value: SigninProvider()),
      ChangeNotifierProvider.value(value: SignupProvider()),
    ];
