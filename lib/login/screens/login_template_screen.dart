import 'package:didgah_login_sample/login/screens/content_of_template_screen.dart';
import 'package:flutter/material.dart';

import 'bg_screen.dart';

class LoginTemplateScreen extends StatelessWidget {
  Widget content;

  LoginTemplateScreen({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BgScreen(
          imagePath: 'assets/images/bg.jpg',
          content: LayoutBuilder(builder: (context, constraint) {
            return SingleChildScrollView(
                child: ConstrainedBox(
                    constraints:
                        BoxConstraints(minHeight: constraint.maxHeight),
                    child: IntrinsicHeight(child: ContentOfTemplateScreen(content: content))));
          })),
    );
  }
}
