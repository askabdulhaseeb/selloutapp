import 'package:flutter/material.dart';
import 'package:intl_phone_field/phone_number.dart';

class SignupProvider extends ChangeNotifier {
  void onSignup(BuildContext context) {
    if (!(_key.currentState?.validate() ?? false)) return;
    try {
      _onLoadingUpdate(true);
      // TODO: ON SIGNUP
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
  TextEditingController get website => _website;
  PhoneNumber get businessNumber => _businessNumber;

  GlobalKey<FormState> get key => _key;
  bool get isLoading => _isLoading;
  //
  // VARIABLES
  //
  // TextEditingController
  final TextEditingController _name = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  PhoneNumber _phoneNumber = PhoneNumber(
    countryISOCode: 'GB',
    countryCode: 'GB',
    number: '',
  );
  // Business
  final TextEditingController _title = TextEditingController();
  final TextEditingController _tag = TextEditingController();
  final TextEditingController _website = TextEditingController();
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
