import 'package:didgah_login_sample/login/screens/content_of_template_screen.dart';
import 'package:didgah_login_sample/secound_design/bg_screen_two.dart';
import 'package:flutter/material.dart';

class LoginTemplateScreen extends StatelessWidget {
  Widget content;

  LoginTemplateScreen({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BgScreenTwo(
          imagePath: 'assets/images/mountain.jpg',
          content: LayoutBuilder(builder: (context, constraint) {
            return SingleChildScrollView(
              child: Container(
                width: double.infinity,
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraint.maxHeight),
                  child: IntrinsicHeight(
                    child: ContentOfTemplateScreen(content: content),
                  ),
                ),
              ),
            );
          })),
    );
  }
}
