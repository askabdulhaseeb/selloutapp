import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class PhoneNumberField extends StatefulWidget {
  const PhoneNumberField({
    required this.initialCountryCode,
    required this.onChange,
    this.bgColor,
    this.title,
    super.key,
  });
  final Function(PhoneNumber)? onChange;
  final String? initialCountryCode;
  final Color? bgColor;
  final String? title;
  @override
  State<PhoneNumberField> createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.title ?? 'Phone Number',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          IntlPhoneField(
            textInputAction: TextInputAction.done,
            showCountryFlag: false,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 12),
              labelText: 'Mobile number',
              labelStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(),
            ),
            initialCountryCode: widget.initialCountryCode ?? 'GB',
            keyboardType: TextInputType.number,
            onChanged: widget.onChange!,
          ),
        ],
      ),
    );
  }
}
