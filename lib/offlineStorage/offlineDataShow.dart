import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Controller/offline_controller.dart';

class Offlinedatashow extends StatelessWidget {
  const Offlinedatashow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Offline data show".text.make(),
      ),
      body: GetBuilder<OfflineController>(
          init: OfflineController(),
          builder: (controller) {
            if (controller.user.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(),
                    20.heightBox,
                    "no data has been added yet".text.make(),
                  ],
                ),
              );
            } else {
              return ListView.builder(
                  itemCount: controller.user.length,
                  itemBuilder: (context, index) {
                    final user = controller.user[index];
                    final String? fullName = user.name;
                    final email = user.email;
                    final dob = user.dob;
                    final image = user.images;
                    final color =
                        user.gander == 'male' ? Colors.green : Colors.purple;
                    return ListTile(
                      trailing: dob?.text.white.size(15).make(),
                      tileColor: color,
                      leading: Image.network(image!)
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .make(),
                      title: fullName?.text.white.make(),
                      subtitle: email?.text.white.make(),
                    );
                  });
            }
          }),
    );
  }
}
