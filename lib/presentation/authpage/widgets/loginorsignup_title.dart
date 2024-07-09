import 'package:flutter/material.dart';

class LoginOrSignupTitle extends StatelessWidget {
  final String title;

  final double? fontsize;

  const LoginOrSignupTitle({super.key, required this.title, this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(color: Colors.white, fontSize: fontsize),
    );
  }
}
