import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CustomToggleSwitch extends StatelessWidget {
  const CustomToggleSwitch({
    required this.list,
    required this.onChanged,
    required this.customWidths,
    required this.initialValue,
    this.readOnly = false,
    Key? key,
  }) : super(key: key);
  final List<String> list;
  final bool readOnly;
  final List<double>? customWidths;
  final String initialValue;
  final void Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Scrollbar(
        child: Container(
          padding: const EdgeInsets.all(4),
          margin: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).dividerTheme.color,
          ),
          child: ToggleSwitch(
            labels: list,
            activeFgColor: Theme.of(context).dividerTheme.color,
            inactiveBgColor: Colors.transparent,
            activeBgColor: <Color>[
              Theme.of(context).scaffoldBackgroundColor,
            ],
            customTextStyles: const <TextStyle>[
              TextStyle(
                fontSize: 16,
                color: Colors.black,
              )
            ],
            customWidths: customWidths,
            cornerRadius: 10,
            totalSwitches: list.length,
            initialLabelIndex: list.contains(initialValue)
                ? list.indexWhere((String element) => element == initialValue)
                : 0,
            onToggle: (int? index) {
              onChanged(list[index ?? 0]);
            },
            changeOnTap: !readOnly,
          ),
        ),
      ),
    );
  }
}
