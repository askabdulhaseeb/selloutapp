import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_textformfield.dart';
import '../../../../../core/widgets/password_textformfield.dart';
import '../../../../../core/utils/app_validator.dart';
import '../../../core/widgets/auth_sellout_title_widget.dart';
import '../../../signup/presentation/screens/signup_screen.dart';
import '../providers/signin_provider.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});
  static const String routeName = '/signin';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: Text(
              'Skip',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyMedium!.color,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Consumer<SignInProvider>(
              builder: (BuildContext context, SignInProvider siPro, _) {
            return Form(
              key: siPro.key,
              child: Column(
                children: <Widget>[
                  const AuthSelloutTitleWidget(),
                  CustomTextFormField(
                    controller: siPro.email,
                    title: 'Email',
                    hint: 'username@gmail.com',
                    autoFocus: true,
                    readOnly: siPro.isLoading,
                    keyboardType: TextInputType.emailAddress,
                    validator: (String? value) => AppValidator.email(value),
                  ),
                  PasswordTextFormField(
                    controller: siPro.password,
                    readOnly: siPro.isLoading,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Foget Password?',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  CustomElevatedButton(
                    title: 'Sign in',
                    isLoading: siPro.isLoading,
                    onTap: () => siPro.onSignIn(context),
                  ),
                  CustomElevatedButton(
                    title: 'Create an account',
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    isLoading: false,
                    bgColor: Colors.transparent,
                    border: Border.all(
                      width: 2,
                      color: Theme.of(context).textTheme.bodyMedium!.color!,
                    ),
                    onTap: () =>
                        Navigator.of(context).pushNamed(SignupScreen.routeName),
                  ),
                  const SizedBox(height: 200),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
