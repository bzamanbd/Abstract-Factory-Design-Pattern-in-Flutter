import 'package:factory_dp/platform_button.dart';
import 'package:factory_dp/platform_indicator.dart';
import 'package:flutter/material.dart';

class AbstractPlatform {
  static Widget buildButton(
      BuildContext context, VoidCallback onPressed, Widget child) {
    return PlatformButton(Theme.of(context).platform).build(onPressed, child);
  }

  static Widget buildIndicatro(BuildContext context) {
    return PlatformIndicator(Theme.of(context).platform).build();
  }
}
