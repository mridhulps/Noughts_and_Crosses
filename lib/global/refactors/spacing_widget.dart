import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Spacing {
  static Widget height(double value) {
    return SizedBox(
      height: value,
    );
  }

  static Widget width(double value) {
    return SizedBox(
      height: value,
    );
  }

  static Size mediaquerySize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}
