import 'package:flutter/material.dart';
import 'package:flutter_test1/counter/counter_screen.dart';
import 'package:flutter_test1/map/map_screen.dart';
import 'package:flutter_test1/notifiction/notification_screen.dart';
import 'package:flutter_test1/restApi/rest_api_screen.dart';
import 'package:flutter_test1/third_party_api/wahter_scren.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'offlineStorage/offlineDataShow.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: "Assignment 1\nBasic Flutter App with Dart.\n"
                        "Objective: Create a basic Flutter app with a simple UI.\nTasks:"
                    .text
                    .semiBold
                    .size(15)
                    .make(),
              ).box
                  .rounded
                  .border(color: Colors.white)
                  .clip(Clip.antiAlias)
                  .make()
                  .onTap(() {
                Get.to(() => const CounterScreen());
              }),
              15.heightBox,
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: "Assignment 3\nFetching Data from a REST API\n"
                "Objective: Fetch and display data from a REST API"
                    .text
                    .semiBold
                    .size(15)
                    .make(),
              )
                  .box
                  .rounded
                  .p1
                  .border(color: Colors.white)
                  .clip(Clip.antiAlias)
                  .make()
                  .onTap(() {
                Get.to(() => const RestApiScreen());
              }),
              15.heightBox,
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: "Assignment 4\nOffline Capabilities with Local Storage\n"
                "Objective: Implement offline capabilities using local storage in your Flutter app."
                    .text
                    .semiBold
                    .size(15)
                    .make(),
              )
                  .box
                  .rounded
                  .p1
                  .border(color: Colors.white)
                  .clip(Clip.antiAlias)
                  .make()
                  .onTap(() {
                Get.to(() => const Offlinedatashow());
              }),
              15.heightBox,
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: "Assignment 5:\nThird-Party API Integration\n"
                "Objective: Integrate a third-party API into your Flutter app."
                    .text
                    .semiBold
                    .size(15)
                    .make(),
              )
                  .box
                  .rounded
                  .p1
                  .border(color: Colors.white)
                  .clip(Clip.antiAlias)
                  .make()
                  .onTap(() {
                Get.to(() => const WeatherScreen());
              }),
              15.heightBox,
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: "Assignment 6: Location-Based Services and Notifications\n"
                "Objective: Integrate Google Maps into your Flutter app."
                    .text
                    .semiBold
                    .size(15)
                    .make(),
              )
                  .box
                  .rounded
                  .p1
                  .border(color: Colors.white)
                  .clip(Clip.antiAlias)
                  .make()
                  .onTap(() {
                Get.to(() => const MapScreen());
              }),
              15.heightBox,
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: "Assignment 7:\nPush Notifications and Firebase Configuration\n"
                "Objective: Send push notification to register users with FCM into your Flutter app."
                    .text
                    .semiBold
                    .size(15)
                    .make(),
              )
                  .box
                  .rounded
                  .p1
                  .border(color: Colors.white)
                  .clip(Clip.antiAlias)
                  .make()
                  .onTap(() {
                Get.to(() => const NotificationScreen());
              }),
              20.heightBox
            ],
          ),
        ),
      ),
    );
  }
}
