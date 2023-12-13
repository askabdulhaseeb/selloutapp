import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/phone_number.dart';

import '../../../../../enums/user/account_visibility_type.dart';
import '../../../../../enums/user/user_role_type.dart';
import '../../data/params/signup_param.dart';
import '../../domain/usecases/get_signup_usecase.dart';
import '../screens/account_type_screen.dart';

class SignUpProvider extends ChangeNotifier {
  SignUpProvider(this._signUpUsecase);
  final GetSignUpUsecase _signUpUsecase;

  void onContinue(BuildContext context) {
    if (!(_key.currentState?.validate() ?? false)) return;
    Navigator.of(context).pushNamed(AccountTypeScreen.routeName);
  }

  void onSignup(BuildContext context) async {
    try {
      _onLoadingUpdate(true);
      SignUpParam param = SignUpParam(
        name: _name.text,
        username: _username.text,
        email: _email.text,
        password: _password.text,
        role: UserRoleType.user,
        phone: _phoneNumber,
        accountType: AccountVisibilityType.personal,
      );
      final bool result = await _signUpUsecase.signup(param);
      if (result) {
        // TODO: On Signup
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    _onLoadingUpdate(false);
  }

  onPhoneNumberUpdate(PhoneNumber? value) {
    if (value == null) return;
    _phoneNumber = value;
    notifyListeners();
  }

  onBusinessPhoneNumberUpdate(PhoneNumber? value) {
    if (value == null) return;
    _businessNumber = value;
    notifyListeners();
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
  PhoneNumber get phoneNumber => _phoneNumber;
  // Business
  TextEditingController get title => _title;
  TextEditingController get tag => _tag;
  TextEditingController get registerNo => _registerNo;
  PhoneNumber get businessNumber => _businessNumber;

  GlobalKey<FormState> get key => _key;
  bool get isLoading => _isLoading;
  //
  // VARIABLES
  //
  // TextEditingController
  final TextEditingController _name =
      TextEditingController(text: kDebugMode ? 'name' : '');
  final TextEditingController _username =
      TextEditingController(text: kDebugMode ? 'username' : '');
  final TextEditingController _email =
      TextEditingController(text: kDebugMode ? 'test@test.com' : '');
  final TextEditingController _password =
      TextEditingController(text: kDebugMode ? '1234567890' : '');
  final TextEditingController _confirmPassword =
      TextEditingController(text: kDebugMode ? '1234567890' : '');
  PhoneNumber _phoneNumber = PhoneNumber(
    countryISOCode: 'GB',
    countryCode: 'GB',
    number: '',
  );
  // Business
  final TextEditingController _title = TextEditingController();
  final TextEditingController _tag = TextEditingController();
  final TextEditingController _registerNo = TextEditingController();
  PhoneNumber _businessNumber = PhoneNumber(
    countryCode: 'GB',
    countryISOCode: 'GB',
    number: '',
  );
  // Key
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  // Bool
  bool _isLoading = false;
}
