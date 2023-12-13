import 'package:flutter/material.dart';

class AuthSelloutTitleWidget extends StatelessWidget {
  const AuthSelloutTitleWidget({this.subtitle, super.key});
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: <Widget>[
          Text(
            'SellOut',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Text(
            subtitle ?? 'SellOut helps you buy & Sell and provide services',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
