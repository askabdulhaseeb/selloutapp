import 'package:flutter/material.dart';

class CreateListingsScreen extends StatelessWidget {
  const CreateListingsScreen({Key? key}) : super(key: key);
  static const String routeName = '/create-listings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreateListingsScreen'),
      ),
      body: const Center(
        child: Text('CreateListingsScreen'),
      ),
    );
  }
}
