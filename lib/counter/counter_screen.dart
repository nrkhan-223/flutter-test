import 'package:flutter/material.dart';
import 'package:flutter_test1/Controller/counter_controller.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(title: "Counter".text.make(),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      "Assignment 2: State Management with GetX\nObjective: Enhance the Flutter app with state management using GetX.Tasks:"
                          .text.semiBold.size(15)
                          .make(),
                      " 1. Integrate GetX into the existing Flutter project.\n2. Create a counter app where pressing a button increases a counter.\n3. Use GetX to manage the state of the counter and update the UI accordingly."
                          .text
                          .make(),
                    ],
                  ),
                ),
              )
                  .box
                  .rounded
                  .p1
                  .border(color: Colors.white)
                  .clip(Clip.antiAlias)
                  .make(),
              30.heightBox,
              Obx(
                () => "the value is: ${controller.count.value}".text.semiBold.size(20).make(),
              ),
              30.heightBox,
              ElevatedButton(
                  onPressed: controller.increasevalue,
                  child: "Increase value".text.make()).box.roundedLg.border(color: Colors.white).make(),
              20.heightBox,
              ElevatedButton(
                  onPressed: controller.decreasevalue,
                  child: "Decrease value".text.make()).box.roundedLg.border(color: Colors.white).make(),
            ],
          ),
        ),
      ),
    );
  }
}
