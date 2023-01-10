import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/controllers/counterController.dart';
import 'package:webapp/pages/other.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);
  final CounterController counterController = Get.put(CounterController());

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
                onPressed: (() => Get.to(OtherPage())),
                child: const Text("Go to next page")),
          ],
        ));
  }
}
