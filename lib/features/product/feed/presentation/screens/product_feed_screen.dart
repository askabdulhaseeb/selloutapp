import 'package:flutter/material.dart';

import '../widgets/product_feed_promo_list_widget.dart';

class ProductFeedScreen extends StatelessWidget {
  const ProductFeedScreen({super.key});
  static const String routeName = '/item-feed';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: <Widget>[
        ProductFeedProMoListWidget(),
      ],
    ));
  }
}
