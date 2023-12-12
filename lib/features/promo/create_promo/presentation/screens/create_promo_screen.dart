import 'package:flutter/material.dart';

class CreateProMoScreen extends StatelessWidget {
  const CreateProMoScreen({super.key});
  static const String routeName = '/create-promo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreateProMoScreen'),
      ),
      body: const Center(
        child: Text('CreateProMoScreen'),
      ),
    );
  }
}
