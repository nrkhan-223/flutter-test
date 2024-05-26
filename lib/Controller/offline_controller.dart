import 'package:get/get.dart';
import '../offlineStorage/db_helper.dart';
import '../offlineStorage/model.dart';

class OfflineController extends GetxController{
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getTasks();
  }
  List<User>user=[];

  Future<int> addUser({User? user}) async {
    return await DBHelper.insert(user);
  }

  void getTasks() async {
    List<Map<String, dynamic>> tasks = await DBHelper.query();
    user.assignAll(tasks.map((data) => new User.fromJson(data)).toList());
    update();
  }


}