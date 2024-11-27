import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'card_of_contrent.dart';

class ContentOfTemplateScreenTwo extends StatelessWidget {
  final Widget content;

  const ContentOfTemplateScreenTwo({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            const SizedBox(height: 56),
            SvgPicture.asset(
              'assets/images/ic_logo_didgah.svg',
              semanticsLabel: 'My SVG Picture',
              width: 240.0,
              height: 80.0,
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'خوش آمدید',
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'لطفا اطلاعات زیر را تکمیل کنید',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
        CardOfContentTwo(
          content: Padding(
            padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
            child: Container(child: content),
          ),
        ),
      ],
    );
  }
}
