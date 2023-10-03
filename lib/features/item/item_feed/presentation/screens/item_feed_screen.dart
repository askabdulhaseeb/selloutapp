import 'package:flutter/material.dart';

import '../widgets/item_feed_promo_list_widget.dart';

class ItemFeedScreen extends StatelessWidget {
  const ItemFeedScreen({Key? key}) : super(key: key);
  static const String routeName = '/item-feed';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: <Widget>[
        ItemFeedProMoListWidget(),
      ],
    ));
  }
}
