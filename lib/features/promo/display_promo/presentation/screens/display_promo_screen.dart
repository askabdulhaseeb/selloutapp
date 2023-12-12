import 'package:flutter/material.dart';

class DisplayProMoScreen extends StatelessWidget {
  const DisplayProMoScreen({super.key});
  static const String routeName = '/display-promo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DisplayProMoScreen'),
      ),
      body: const Center(
        child: Text('DisplayProMoScreen'),
      ),
    );
  }
}
