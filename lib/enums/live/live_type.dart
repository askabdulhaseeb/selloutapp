import 'package:flutter/material.dart';

enum LiveType {
  bidding('bidding', 'Live Bidding', Icons.shopping_basket_rounded),
  shopping('shopping', 'Live Shopping', Icons.shopping_bag_rounded);

  const LiveType(this.json, this.title, this.icon);
  final String title;
  final String json;
  final IconData icon;
}

class LiveTypeConvertor {
  LiveType toEnum(String type) {
    switch (type) {
      case 'bidding':
        return LiveType.bidding;
      case 'shopping':
        return LiveType.shopping;
      default:
        return LiveType.bidding;
    }
  }
}
