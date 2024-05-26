import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

Future<void>handleMessage(RemoteMessage message)async{
  print("Title: ${message.notification?.title}");
  print("body: ${message.notification?.body}");
  print("payload: ${message.data}");
}

class NotificationController extends GetxController{
  final  _firebaseMessaging=FirebaseMessaging.instance;
  Future<void>initNotification()async{
    await _firebaseMessaging.requestPermission();
    final fcmToken=await _firebaseMessaging.getToken();
    print("token is: $fcmToken");
    FirebaseMessaging.onBackgroundMessage(handleMessage);
  }

}