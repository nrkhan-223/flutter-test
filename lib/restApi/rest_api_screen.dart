import 'package:flutter/material.dart';
import 'package:flutter_test1/Controller/offline_controller.dart';
import 'package:flutter_test1/restApi/model_user.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Controller/restapi_controller.dart';
import '../offlineStorage/model.dart';

class RestApiScreen extends StatefulWidget {
  const RestApiScreen({super.key});

  @override
  State<RestApiScreen> createState() => _RestApiScreenState();
}

class _RestApiScreenState extends State<RestApiScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "RestApi Test".text.make(),
      ),
      body: GetBuilder<RestapiController>(
          init: RestapiController(),
          builder: (controller) {
            if (controller.users.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(),
                    20.heightBox,
                    "Network Error".text.make(),
                  ],
                ),
              );
            } else {
              return ListView.builder(
                  itemCount: controller.users.length,
                  itemBuilder: (context, index) {
                    final user = controller.users[index];
                    String fullName =
                        '${user.name.title} ${user.name.first} ${user.name.last}';
                    final String email = user.email;
                    var dob = user.dob.age;
                    String image = user.picture.thumbnail;
                    String gander = user.gender;
                    final color =
                        gander == 'male' ? Colors.green : Colors.purple;
                    return ListTile(
                      trailing: dob.text.white.size(15).make(),
                      tileColor: color,
                      leading: Image.network(image)
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .make(),
                      title: fullName.text.white.make(),
                      subtitle: email.text.white.make(),
                    );
                  });
            }
          }),
    );
  }
}
