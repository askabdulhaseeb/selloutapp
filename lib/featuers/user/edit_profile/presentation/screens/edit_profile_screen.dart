import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);
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
