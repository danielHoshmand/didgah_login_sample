import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import 'blur_screen.dart';

class ContentOfTemplateScreen extends StatelessWidget {
  Widget content;

  ContentOfTemplateScreen({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Spacer(),
        SvgPicture.asset(
          'assets/images/ic_logo_didgah.svg',
          semanticsLabel: 'My SVG Picture',
          width: 240.0,
          height: 80.0,
        ),
        const SizedBox(height: 36),
        BlurScreen(
          content: Padding(
            padding: const EdgeInsets.all(25),
            child: content,
          ),
        ),
        const Spacer(),
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
        ),
      ],
    );
  }
}
