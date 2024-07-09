import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final double? borderradius;
  const CustomTextField({super.key, this.hintText, this.borderradius});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white54),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderradius ?? 0))),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
