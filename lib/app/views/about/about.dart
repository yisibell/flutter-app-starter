import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAboutPage extends StatelessWidget {
  const MyAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter About Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go Home Page'),
          onPressed: () {
            Get.toNamed("/");
          },
        ),
      ),
    );
  }
}
