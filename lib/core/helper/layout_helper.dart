import 'package:flutter/material.dart';

class LayoutHelper {
  static double getWidth(BuildContext context, {double fraction = 1}) {
    return MediaQuery.of(context).size.width * fraction;
  }

  static double getHeight(BuildContext context, {double fraction = 1}) {
    return MediaQuery.of(context).size.height * fraction;
  }
}
