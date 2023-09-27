import 'package:flutter/material.dart';

class CustomBottomSheetWithWidget extends StatelessWidget {
  const CustomBottomSheetWithWidget({required this.widget, Key? key})
      : super(key: key);

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(50),
          topLeft: Radius.circular(50),
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 2),
          padding: const EdgeInsets.only(top: 37, bottom: 20),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(50.0)),
            color: Colors.red,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 0.0),
                blurRadius: 2.0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(child: widget),
          ),
        ),
      ),
    );
  }
}
