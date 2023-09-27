import 'package:flutter/material.dart';

class CustomBottomSheetWidget extends StatelessWidget {
  const CustomBottomSheetWidget({
    required this.bottomSheetWidget,
    this.isSelected = false,
    String? hint,
    super.key,
  }) : hint = hint ?? 'Tap to select';
  final String hint;
  final bool isSelected;
  final Widget bottomSheetWidget;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) => bottomSheetWidget,
        );
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: isSelected ? 48 : 54,
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color: Theme.of(context).dividerTheme.color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    hint,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
            if (!isSelected)
              const Text(
                'Selection Require',
                style: TextStyle(color: Colors.red),
              )
          ],
        ),
      ),
    );
  }
}
