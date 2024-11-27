import 'package:didgah_login_sample/login/screens/login_screen_one.dart';
import 'package:didgah_login_sample/login/screens/login_template_screen.dart';
import 'package:didgah_login_sample/secound_design/login_screen_one_two.dart';
import 'package:didgah_login_sample/secound_design/login_template_screen_two.dart';
import 'package:didgah_login_sample/secound_design/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      darkTheme: ThemeData(
        fontFamily: 'IranianSans',
        colorScheme: MaterialSchemeColors.darkScheme()
            .toColorScheme(), // ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      theme: ThemeData(
        fontFamily: 'IranianSans',
        colorScheme: MaterialSchemeColors.lightScheme()
            .toColorScheme(), // ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginTemplateScreenTwo(content: LoginScreenOneTwo()),
    );
  }
}
