import 'package:flutter/material.dart';

class LabelSwitchTwo extends StatelessWidget {
  ValueChanged<bool>? onChanged;
  String label;

  LabelSwitchTwo({super.key, required this.onChanged, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(value: true, onChanged: onChanged),
        const SizedBox(width: 15),
        Text(
          label,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
