import 'package:didgah_login_sample/login/screens/login_screen_one.dart';
import 'package:didgah_login_sample/my_app.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('fa', 'IR')],
      path: 'assets/translations',
      // <-- change the path of the translation files
      fallbackLocale: const Locale('en', 'US'),
      startLocale: const Locale('fa', 'IR'),
      child: const MyApp(),
    );
  }
}
