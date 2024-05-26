import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Controller/notification_controller.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  var controller = Get.put(NotificationController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.initNotification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "FCM notification".text.make(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            "Assignment 7:\nPush Notifications and Firebase Configuration."
                .text
                .semiBold
                .size(16)
                .make(),
            5.heightBox,
            "Objective: Send push notification to register users with FCM into your Flutter app."
                .text.size(14.5)
                .make(),
            "1. Create a Firebase Project:\n● Go to the Firebase Console.\n● Create a new project and follow the setup wizard.\n2. Add Your App to the Firebase Project\n● Register your app (both Android and iOS if needed).\n● Download the google-services.json (for Android) andGoogleService-Info.plist (for iOS) files and place them in the appropriate directories in your Flutter project.\n3. Enable Firebase Cloud Messaging\n● In the Firebase Console, navigate to Cloud Messaging and enable it.\n4. Send Push Notification Dynamically"
                .text
                .make(),
          ],
        )
            .box
            .rounded
            .p1
            .padding(const EdgeInsets.all(15))
            .border(color: Colors.white)
            .clip(Clip.antiAlias)
            .make(),
      ),
    );
  }
}
