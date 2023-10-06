import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_shadow_bg_widget.dart';
import '../../../../../enums/listings/list_type.dart';

class CreateListingTile extends StatelessWidget {
  const CreateListingTile(this.type, {super.key});
  final ListType type;

  @override
  Widget build(BuildContext context) {
    return CustomShadowBgWidget(
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Theme.of(context).dividerColor,
            child: Text(type.short),
          ),
          const SizedBox(width: 12),
          Text(
            type.display,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
