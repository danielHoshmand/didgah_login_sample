import 'dart:ui';

import 'package:flutter/material.dart';

class BlurScreen extends StatelessWidget {
  double height;
  Widget content;

  BlurScreen({super.key, this.height = 400, required this.content});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 450),
        margin: const EdgeInsets.symmetric(horizontal: 32),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
          color: Colors.black.withOpacity(0.1),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
            child: content,
          ),
        ),
      ),
    );
  }
}
