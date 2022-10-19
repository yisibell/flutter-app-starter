import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/count_controller.dart'
    show counterObserver, CounterController;

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Home Page'),
          ),
          body: Center(
            child: Column(
              children: [
                ElevatedButton(
                  child: const Text('Go About Page'),
                  onPressed: () {
                    Get.toNamed("/about");
                  },
                ),
                Text('count is: ${counterObserver.value.count}')
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            tooltip: 'Add', // used by assistive technologies
            onPressed: () {
              CounterController.increment();
            },
            child: const Icon(Icons.add),
          ),
        ));
  }
}
