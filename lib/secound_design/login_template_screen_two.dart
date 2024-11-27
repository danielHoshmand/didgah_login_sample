import 'package:didgah_login_sample/secound_design/content_of_template_screen_two.dart';
import 'package:flutter/material.dart';

import 'bg_screen_two.dart';

class LoginTemplateScreenTwo extends StatelessWidget {
  final Widget content;

  const LoginTemplateScreenTwo({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.blue,
          child: LayoutBuilder(builder: (context, constraint) {
            return SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraint.maxHeight),
                  child: IntrinsicHeight(
                    child: ContentOfTemplateScreenTwo(content: content),
                  ),
                ),
              ),
            );
          })),
      // body: BgScreenTwo(
      //     imagePath: 'assets/images/mountain.jpg',
      //     content: LayoutBuilder(builder: (context, constraint) {
      //       return SingleChildScrollView(
      //         child: SizedBox(
      //           width: double.infinity,
      //           child: ConstrainedBox(
      //             constraints: BoxConstraints(minHeight: constraint.maxHeight),
      //             child: IntrinsicHeight(
      //               child: ContentOfTemplateScreenTwo(content: content),
      //             ),
      //           ),
      //         ),
      //       );
      //     })),
    );
  }
}
