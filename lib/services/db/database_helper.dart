import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:walkwithme/services/db/database_helper.dart';

class DatabaseHelper{
  var _databaseVersion = 1;
  static late Database _db;
  String _databaseName = "walkWithMeDB.db";

  String? get getDatabaseName {
    return _databaseName;
  }

 static getDb() {
    return _db;
  }

  // this opens the database (and creates it if it doesn't exist)
  Future<void> init() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, _databaseName);
    _db = await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,

    );
  }

  // SQL code to create the database table
  Future _onCreate(Database db, int version) async {
    await db.execute('''
        CREATE TABLE "Customer" (
          "id"	INTEGER NOT NULL,
          "email"	TEXT,
          "name"	TEXT,
          "surname"	TEXT,
          "password"	TEXT,
          "role"	TEXT,
          "createdAt"	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
          PRIMARY KEY("id" AUTOINCREMENT)
        )
          ''');

    await db.execute('''
        CREATE TABLE "Dog" (
          "id"	INTEGER NOT NULL,
          "name"	TEXT,
          "gender"	TEXT,
          "breed"	TEXT,
          "createdAt"	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
          "owner"	INTEGER,
          PRIMARY KEY("id" AUTOINCREMENT)
        )
          ''');

    await db.execute('''
        CREATE TABLE "Reservation" (
          "id"	INTEGER NOT NULL,
          "dog_owner_id"	INTEGER,
          "title"	TEXT,
          "start_date"	TEXT,
          "end_date"	TEXT,
          "dog_id"	TEXT,
          "walker_id"	INTEGER,
          "is_reserved"	INTEGER DEFAULT 0,
          "is_canceled"	INTEGER DEFAULT -1,
          "createdAt"	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
          PRIMARY KEY("id" AUTOINCREMENT)
        )
          ''');
  }

}