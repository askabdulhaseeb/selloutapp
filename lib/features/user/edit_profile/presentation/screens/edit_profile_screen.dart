import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});
  static const String routeName = '/edit-profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EditProfileScreen'),
      ),
      body: const Center(
        child: Text('EditProfileScreen'),
      ),
    );
  }
}
