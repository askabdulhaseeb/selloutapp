import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../enums/listings/list_type.dart';
import '../widgets/create_listing_tile.dart';

class CreateListingsScreen extends StatelessWidget {
  const CreateListingsScreen({super.key});
  static const String routeName = '/create-listings';
  @override
  Widget build(BuildContext context) {
    final List<ListType> list = ListTypeConv.list;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: <Widget>[
            const Text(
              'Start Selling',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: CupertinoSearchTextField(
                onChanged: (String value) {},
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) =>
                    CreateListingTile(list[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
