import 'package:flutter/material.dart';

import 'package:noughts_and_crosses/presentation/homepage/homepage.dart';

void main(List<String> args) {
  runApp(const NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}
