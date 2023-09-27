import 'package:flutter/material.dart';

class GiveReviewScreen extends StatelessWidget {
  const GiveReviewScreen({Key? key}) : super(key: key);
  static const String routeName = '/give-review';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GiveReviewScreen'),
      ),
      body: const Center(
        child: Text('GiveReviewScreen'),
      ),
    );
  }
}
