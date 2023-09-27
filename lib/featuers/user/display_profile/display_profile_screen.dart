import 'package:flutter/material.dart';

class DisplayProfileScreen extends StatelessWidget {
  const DisplayProfileScreen({Key? key}) : super(key: key);
  static const String routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DisplayProfileScreen'),
      ),
      body: Center(
        child: Text('DisplayProfileScreen'),
      ),
    );
  }
}
