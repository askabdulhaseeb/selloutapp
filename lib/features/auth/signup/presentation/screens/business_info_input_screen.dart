import 'package:flutter/material.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:provider/provider.dart';

import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_textformfield.dart';
import '../../../../../core/widgets/phone_number_field.dart';
import '../providers/signup_provider.dart';

class BusinessInfoInputScreen extends StatelessWidget {
  const BusinessInfoInputScreen({Key? key}) : super(key: key);
  static const String routeName = '/business-info';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business Info'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Consumer<SignupProvider>(
            builder: (BuildContext context, SignupProvider suPro, _) {
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
                controller: suPro.website,
                title: 'Website',
                hint: 'Ex. nike.com',
                readOnly: suPro.isLoading,
              ),
              PhoneNumberField(
                initialCountryCode: suPro.businessNumber.countryCode,
                onChange: (PhoneNumber? value) {},
              ),
              CustomElevatedButton(
                title: 'Register Business',
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
