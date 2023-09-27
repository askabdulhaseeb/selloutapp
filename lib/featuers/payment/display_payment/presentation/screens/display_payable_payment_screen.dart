import 'package:flutter/material.dart';

class DisplayPayablePaymentScreen extends StatelessWidget {
  const DisplayPayablePaymentScreen({Key? key}) : super(key: key);
  static const String routeName = '/payable-payment';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DisplayPayablePaymentScreen'),
      ),
      body: const Center(
        child: Text('DisplayPayablePaymentScreen'),
      ),
    );
  }
}
