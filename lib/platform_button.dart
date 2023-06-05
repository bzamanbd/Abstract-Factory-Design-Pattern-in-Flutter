import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class PlatformButton {
  Widget build(VoidCallback onPressed, Widget child);
  //factory method//
  factory PlatformButton(TargetPlatform targetPlatform) {
    switch (targetPlatform) {
      case TargetPlatform.android:
        return AndroidButton();
      case TargetPlatform.iOS:
        return IosButton();
      default:
        return AndroidButton();
    }
  }
}

class AndroidButton implements PlatformButton {
  @override
  Widget build(VoidCallback onPressed, Widget child) {
    return ElevatedButton(onPressed: onPressed, child: child);
  }
}

class IosButton implements PlatformButton {
  @override
  Widget build(VoidCallback onPressed, Widget child) {
    return CupertinoButton(onPressed: onPressed, child: child);
  }
}
