import 'dart:convert';

import 'package:intl_phone_field/phone_number.dart';

import '../../../../../enums/user/account_visibility_type.dart';
import '../../../../../enums/user/user_role_type.dart';

class SignUpParam {
  SignUpParam({
    required this.name,
    required this.username,
    required this.email,
    required this.password,
    required this.role,
    required this.phone,
    required this.accountType,
  });

  final String name;
  final String username;
  final String email;
  final String password;
  final UserRoleType role;
  final PhoneNumber phone;
  final AccountVisibilityType accountType;

  String get body => json.encode(_toMap());

  Map<String, dynamic> _toMap() {
    return <String, dynamic>{
      'fullName': name,
      'email': email,
      'password': password,
      'role': role.json,
      'phoneNumberDetails': <String, dynamic>{
        'countryCode': phone.countryCode,
        'phoneNumber': phone.number,
        'completePhoneNo': phone.completeNumber,
      },
      'accountType': accountType.json
    };
  }
}
