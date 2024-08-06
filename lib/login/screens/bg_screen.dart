import 'package:flutter/cupertino.dart';

class BgScreen extends StatelessWidget {
  String imagePath;
  Widget content;

  BgScreen({super.key, required this.imagePath, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.center,
      child: content,
    );
  }
}
