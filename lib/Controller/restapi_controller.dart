import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../offlineStorage/model.dart';
import '../restApi/model_user.dart';
import 'offline_controller.dart';

class RestapiController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getUser();
  }

  List<Users> users = [];

  Future<List<Users>> getUsers() async {
    const url = 'https://randomuser.me/api/?results=100';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final result = json['results'] as List<dynamic>;
    final users = result.map((e) => Users.fromJson(e)).toList();
    return users;
  }

  Future<void> getUser() async {
    final response = await getUsers();
    users = response;
    _addUsersToDb();
    update();
  }

  _addUsersToDb() async {
    for (var i in users) {
      await OfflineController().addUser(
        user: User(
            name: '${i.name.title} ${i.name.first} ${i.name.last}',
            email: i.email,
            dob: i.dob.age.toString(),
            images: i.picture.thumbnail,
            gander: i.gender),
      );
    }
  }
}
