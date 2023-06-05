import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class PlatformIndicator {
  Widget build();
  Color color();
  //factory method//
  factory PlatformIndicator(TargetPlatform targetPlatform) {
    switch (targetPlatform) {
      case TargetPlatform.android:
        return AndroidIndicator();
      case TargetPlatform.iOS:
        return IosIndicator();
      default:
        return AndroidIndicator();
    }
  }
}

class AndroidIndicator implements PlatformIndicator {
  @override
  Widget build() {
    return CircularProgressIndicator(
      color: color(),
    );
  }

  @override
  Color color() {
    return Colors.blue;
  }
}

class IosIndicator implements PlatformIndicator {
  @override
  Widget build() {
    return SizedBox(
      width: 80,
      height: 80,
      child: CupertinoActivityIndicator(
        color: color(),
      ),
    );
  }

  @override
  Color color() {
    return Colors.purple;
  }
}
