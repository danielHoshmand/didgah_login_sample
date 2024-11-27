import 'dart:ui';

import 'package:flutter/material.dart';

class CardOfContentTwo extends StatelessWidget {
  final double height;
  final Widget content;

  const CardOfContentTwo({
    super.key,
    this.height = 400,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        color: Colors.white,
        child: content);
  }
}
