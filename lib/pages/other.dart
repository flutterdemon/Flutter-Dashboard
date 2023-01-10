import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:webapp/controllers/counterController.dart';

class OtherPage extends StatelessWidget {
  OtherPage({Key key}) : super(key: key);
  final CounterController counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("DashBoard"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Obx(
              () => Text("${counterController.counter.value}"),
            )),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: counterController.increment,
                child: const Text("Increment")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () => Get.back(), child: const Text("Go back")),
          ],
        ));
  }
}
