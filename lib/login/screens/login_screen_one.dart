import 'package:didgah_login_sample/login/screens/label_switch.dart';
import 'package:didgah_login_sample/login/widgets/auth_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LoginScreenOne extends StatefulWidget {
  const LoginScreenOne({super.key});

  @override
  State<LoginScreenOne> createState() => _LoginScreenOneState();
}

class _LoginScreenOneState extends State<LoginScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AuthTextField(
            validatorText: tr("invalid_server"),
            labelText: tr("server_url"),
            suffixIcon: const Icon(
              Icons.qr_code,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          AuthTextField(
            validatorText: tr("invalid_username"),
            labelText: tr("username"),
          ),
          const SizedBox(height: 16),
          LabelSwitch(onChanged: (value) {}, label: tr("secure_connection")),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
            ),
            onPressed: () {},
            child: Text(tr('login')),
          ),
        ],
      ),
    );
  }
}
