import 'package:didgah_login_sample/login/screens/label_switch.dart';
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
      child: Expanded(
        flex: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            TextFormField(
              style: const TextStyle(color: Colors.white),
              autofocus: true,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return tr("invalid_server");
                }
                return null;
              },
              decoration: InputDecoration(
                hintStyle: const TextStyle(color: Colors.white),
                labelText: tr("server_url"),
                labelStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const Spacer(),
            TextFormField(
              autofocus: true,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return tr("invalid_username");
                }
                return null;
              },
              decoration: InputDecoration(
                hintStyle: const TextStyle(color: Colors.white),
                labelText: tr("username"),
                labelStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Spacer(),
            LabelSwitch(onChanged: (value) {}, label: tr("secure_connection")),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {},
              child: Text(tr('login')),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
