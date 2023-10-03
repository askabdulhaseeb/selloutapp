import 'package:flutter/material.dart';

class AuthSelloutTitleWidget extends StatelessWidget {
  const AuthSelloutTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 60),
          Text(
            'SellOut',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Theme.of(context).primaryColor,
            ),
          ),
          const Text(
            'SellOut helps you sell the stuff you want to the people you want',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}