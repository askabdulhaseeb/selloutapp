import 'package:flutter/material.dart';

class DisplayCartScreen extends StatelessWidget {
  const DisplayCartScreen({super.key});
  static const String routeName = '/display-cart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DisplayCartScreen'),
      ),
      body: const Center(
        child: Text('DisplayCartScreen'),
      ),
    );
  }
}
