import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        content: ListView(children: [
          Expanded(child: Container()),
          SvgPicture.asset(
            'assets/images/ic_logo_didgah.svg',
            semanticsLabel: 'My SVG Picture',
            width: 240.0,
            height: 80.0,
          ),
          const SizedBox(height: 36),
          Center(
            child: BlurScreen(
              content: Padding(
                padding: const EdgeInsets.all(25),
                child: content,
              ),
            ),
          ),
          Expanded(child: Container()),
          SvgPicture.asset(
            'assets/images/ic_logo_chargoon.svg',
            semanticsLabel: 'My SVG Picture',
            width: 95.0,
            height: 28.0,
          ),
          SvgPicture.asset(
            'assets/images/ic_copyright.svg',
            semanticsLabel: 'My SVG Picture',
            width: 95.0,
            height: 12.0,
          ),
          const SizedBox(
            height: 36,
          )
        ]),
      ),
    );
  }
}
