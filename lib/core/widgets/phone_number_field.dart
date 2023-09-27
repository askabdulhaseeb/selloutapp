import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class PhoneNumberField extends StatefulWidget {
  const PhoneNumberField({
    required this.initialCountryCode,
    required this.onChange,
    this.bgColor,
    Key? key,
  }) : super(key: key);
  final Function(PhoneNumber)? onChange;
  final String? initialCountryCode;
  final Color? bgColor;
  @override
  State<PhoneNumberField> createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).dividerTheme.color,
      ),
      child: IntlPhoneField(
        textInputAction: TextInputAction.done,
        showCountryFlag: true,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 12),
          enabledBorder: InputBorder.none,
          labelText: 'Mobile number',
          labelStyle: TextStyle(color: Colors.grey),
          border: InputBorder.none,
        ),
        initialCountryCode: 'GB',
        keyboardType: TextInputType.number,
        onChanged: widget.onChange!,
      ),
    );
  }
}
