// ignore_for_file: avoid_print

import 'package:factory_dp/abstract_platform.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Factory Design Pattarn'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AbstractPlatform.buildButton(
              context,
              () {
                print('object');
              },
              const Text('OtherButton'),
            ),
          ],
        ),
      ),
    );
  }
}
