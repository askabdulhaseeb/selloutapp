import 'package:flutter/material.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:provider/provider.dart';

import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_textformfield.dart';
import '../../../../../core/widgets/phone_number_field.dart';
import '../providers/signup_provider.dart';

class BusinessInfoInputScreen extends StatelessWidget {
  const BusinessInfoInputScreen({super.key});
  static const String routeName = '/business-info';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business Info'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Consumer<SignUpProvider>(
            builder: (BuildContext context, SignUpProvider suPro, _) {
          return Column(
            children: <Widget>[
              CustomTextFormField(
                controller: suPro.title,
                title: 'Business Name',
                hint: 'Ex. Nike',
                autoFocus: true,
                readOnly: suPro.isLoading,
              ),
              CustomTextFormField(
                controller: suPro.tag,
                title: 'Tagline',
                hint: 'Ex. Just do it.',
                readOnly: suPro.isLoading,
              ),
              CustomTextFormField(
                controller: suPro.registerNo,
                title: 'Companies House No.',
                hint: 'Ex. 12347890',
                readOnly: suPro.isLoading,
              ),
              PhoneNumberField(
                title: 'Business Number',
                initialCountryCode: suPro.businessNumber.countryCode,
                onChange: (PhoneNumber? value) {},
              ),
              CustomElevatedButton(
                title: 'Continue',
                isLoading: suPro.isLoading,
                onTap: () {},
              ),
            ],
          );
        }),
      ),
    );
  }
}
