import 'package:flutter/material.dart';

import 'bg_screen.dart';
import 'blur_screen.dart';

class LoginTemplateScreen extends StatelessWidget {
  Widget content;

  LoginTemplateScreen({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BgScreen(
        imagePath: 'assets/images/bg.jpg',
        content: BlurScreen(
          content: Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
                alignment: Alignment.center,
                child: Expanded(
                  flex: 1,
                  child: Column(
                    children: [content],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
