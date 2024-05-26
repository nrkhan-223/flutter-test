import 'package:flutter_test1/offlineStorage/model.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static Database? _db;
  static const int _version = 1;
  static const String _tableName = "tasks";

  static Future<void> initDb() async {
    if (_db != null) {
      return;
    }
    try {
      String path = '${await getDatabasesPath()}tasks.db';
      _db =
      await openDatabase(path, version: _version, onCreate: (db, version) {
        print("creating a new one");
        return db.execute("CREATE TABLE $_tableName("
            " id INTEGER PRIMARY KEY AUTOINCREMENT , "
            " name STRING, email STRING, dob STRING , "
            " images STRING ,"
            " gander STRING)");
      });
    } catch (e) {
      print(e);
    }
  }

  static Future<int> insert(User? user) async {
    print("insert function called");
    return await _db?.insert(_tableName, user!.toJson()) ?? 1;
  }

  static Future<List<Map<String, dynamic>>> query() async {
    print("query function called");
    return await _db!.query(_tableName);
  }


}
