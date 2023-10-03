import 'package:flutter/material.dart';

class DisplayReviewScreen extends StatelessWidget {
  const DisplayReviewScreen({Key? key}) : super(key: key);
  static const String routeName = '/display-review';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DisplayReviewScreen'),
      ),
      body: const Center(
        child: Text('DisplayReviewScreen'),
      ),
    );
  }
}
