import 'package:flutter/material.dart';

class DisplayProfileScreen extends StatelessWidget {
  const DisplayProfileScreen({super.key});
  static const String routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DisplayProfileScreen'),
      ),
      body: const Center(
        child: Text('DisplayProfileScreen'),
      ),
    );
  }
}
