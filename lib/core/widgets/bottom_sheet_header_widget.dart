import 'package:flutter/material.dart';

class BottomSheetHeaderWidget extends StatelessWidget {
  const BottomSheetHeaderWidget({
    required this.title,
    this.titleInUpperCase = true,
    super.key,
  });
  final String title;
  final bool titleInUpperCase;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 100,
          height: 4,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Theme.of(context).dividerColor,
          ),
        ),
        Text(
          titleInUpperCase ? title.toUpperCase() : title,
          style: TextStyle(
            fontSize: 32,
            color: Theme.of(context).dividerColor.withOpacity(0.5),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
