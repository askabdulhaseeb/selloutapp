import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:provider/provider.dart';

import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_textformfield.dart';
import '../../../../../core/widgets/password_textformfield.dart';
import '../../../../../core/widgets/phone_number_field.dart';
import '../../../../../core/utils/app_validator.dart';
import '../../../core/widgets/auth_sellout_title_widget.dart';
import '../providers/signup_provider.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  static const String routeName = '/signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Consumer<SignUpProvider>(
              builder: (BuildContext context, SignUpProvider suPro, _) {
            return Form(
              key: suPro.key,
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 80),
                  const AuthSelloutTitleWidget(),
                  const SizedBox(height: 24),
                  CustomTextFormField(
                    controller: suPro.name,
                    title: 'Full Name',
                    hint: 'Full Name',
                    autoFocus: true,
                    readOnly: suPro.isLoading,
                    keyboardType: TextInputType.name,
                    validator: (String? value) => AppValidator.lessThen2(value),
                  ),
                  CustomTextFormField(
                    controller: suPro.username,
                    title: 'Username',
                    hint: '''Unique, Spaces not allowed''',
                    readOnly: suPro.isLoading,
                    validator: (String? value) =>
                        AppValidator.username(context, value),
                  ),
                  PhoneNumberField(
                    initialCountryCode: suPro.phoneNumber.countryCode,
                    onChange: (PhoneNumber? value) =>
                        suPro.onPhoneNumberUpdate(value),
                  ),
                  CustomTextFormField(
                    controller: suPro.email,
                    title: 'Email',
                    hint: 'username@gmail.com',
                    readOnly: suPro.isLoading,
                    keyboardType: TextInputType.emailAddress,
                    validator: (String? value) => AppValidator.email(value),
                  ),
                  PasswordTextFormField(
                    controller: suPro.password,
                    readOnly: suPro.isLoading,
                    textInputAction: TextInputAction.next,
                  ),
                  PasswordTextFormField(
                    controller: suPro.confirmPassword,
                    title: 'Confirm Password',
                    readOnly: suPro.isLoading,
                  ),
                  const SizedBox(height: 16),
                  CustomElevatedButton(
                    title: 'Continue',
                    isLoading: suPro.isLoading,
                    onTap: () => suPro.onContinue(context),
                  ),
                  const SizedBox(height: 8),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Theme.of(context).dividerColor,
                      ),
                      children: <TextSpan>[
                        const TextSpan(text: 'By registering you accept '),
                        TextSpan(
                          text: 'Customer Agreement Conditions',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        const TextSpan(text: ' By '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        const TextSpan(text: '.'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Theme.of(context).dividerColor,
                      ),
                      children: <TextSpan>[
                        const TextSpan(text: 'Already have an account? '),
                        TextSpan(
                          text: 'Sign In',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).pop();
                            },
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 160),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
