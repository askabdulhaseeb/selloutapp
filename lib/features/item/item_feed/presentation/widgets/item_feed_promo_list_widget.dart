import 'package:flutter/material.dart';

import 'item_feed_add_new_promo_square_widget.dart';

class ItemFeedProMoListWidget extends StatelessWidget {
  const ItemFeedProMoListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            const ItemFeedAddProMoSquareWidget(),
            ListView.separated(
              itemCount: 10,
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemBuilder: (BuildContext context, int index) => Container(
                width: 100,
                height: double.infinity,
                color: Colors.grey.shade200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
