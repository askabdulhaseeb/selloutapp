import 'package:flutter/material.dart';

class DisplayListingsScreen extends StatelessWidget {
  const DisplayListingsScreen({Key? key}) : super(key: key);
  static const String routeName = '/display-listings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DisplayListingsScreen'),
      ),
      body: const Center(
        child: Text('DisplayListingsScreen'),
      ),
    );
  }
}
