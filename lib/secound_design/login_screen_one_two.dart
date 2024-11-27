import 'package:didgah_login_sample/login/screens/label_switch.dart';
import 'package:didgah_login_sample/login/widgets/auth_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LoginScreenOneTwo extends StatefulWidget {
  const LoginScreenOneTwo({super.key});

  @override
  State<LoginScreenOneTwo> createState() => _LoginScreenOneTwoState();
}

class _LoginScreenOneTwoState extends State<LoginScreenOneTwo> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AuthTextField(
            validatorText: tr("invalid_server"),
            labelText: tr("server_url"),
          ),
          const SizedBox(height: 24),
          AuthTextField(
            validatorText: tr("invalid_username"),
            labelText: tr("username"),
            suffixIcon: const Icon(
              Icons.remove_red_eye_rounded,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 24),
          LabelSwitch(onChanged: (value) {}, label: tr("secure_connection")),
          const SizedBox(height: 24),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Colors.blue),
            onPressed: () {},
            child: Text(tr('login')),
          ),
          const SizedBox(height: 150),
        ],
      ),
    );
  }
}
