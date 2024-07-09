import 'package:flutter/material.dart';

void showInSnackBar(String value, BuildContext context) async {
  await showDialog<Container>(
      context: context,
      builder: (context) => AlertDialog(
              title: Column(
            children: [
              Text(value),
              InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('ok'))
            ],
          )));
}
