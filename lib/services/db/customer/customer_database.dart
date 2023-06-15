import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:walkwithme/services/db/database_helper.dart';

class CustomerDatabase {
  static const table = 'Customer';

  static const columnId = 'id';
  static const columnName = 'name';
  static const columnSurname = 'surname';
  static const columnEmail = 'email';
  static const columnPassword = 'password';
  static const columnRole = 'role';

  // Inserts a row in the database where each key in the Map is a column name
  // and the value is the column value. The return value is the id of the
  // inserted row.
  Future<int> insert(Map<String, dynamic> row) async {
    return await DatabaseHelper.getDb().insert(table, row);
  }


  static Future<Map<String, dynamic>> getById(int id) async {
    return await DatabaseHelper.getDb()
        .rawQuery("SELECT * FROM $table WHERE id = $id");

  Future<List<Map<String, dynamic>>> getByEmailAndPassword(String email, String password) async {
    return await DatabaseHelper.getDb().rawQuery("SELECT * FROM $table WHERE email = '$email' AND password = '$password'");

  }



  // All of the rows are returned as a list of maps, where each map is
  // a key-value list of columns.
  Future<List<Map<String, dynamic>>> queryAllRows() async {
    return await DatabaseHelper.getDb().query(table);
  }

  // All of the methods (insert, query, update, delete) can also be done using
  // raw SQL commands. This method uses a raw query to give the row count.
  Future<int> queryRowCount() async {
    final results =
        await DatabaseHelper.getDb().rawQuery('SELECT COUNT(*) FROM $table');
    return Sqflite.firstIntValue(results) ?? 0;
  }

  // We are assuming here that the id column in the map is set. The other
  // column values will be used to update the row.
  static Future<int> update(Map<String, dynamic> row) async {
    int id = row[columnId];
    return await DatabaseHelper.getDb().update(
      table,
      row,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Deletes the row specified by the id. The number of affected rows is
  // returned. This should be 1 as long as the row exists.
  Future<int> delete(int id) async {
    return await DatabaseHelper.getDb().delete(
      table,
      where: '$columnId = ?',
      whereArgs: [id],
    );
  }
}














  // static Future<void> createTables(sql.Database database) async {
  //   await database.execute("""CREATE TABLE Customer(
  //       id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  //       email TEXT,
  //       name TEXT,
  //       surname TEXT,
  //       password TEXT,
  //       role TEXT,
  //       createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
  //     )
  //     """);
  // }
  //
  // static Future<sql.Database> db() async {
  //   return sql.openDatabase(
  //     'walkwithme.db',
  //     version: 1,
  //     onCreate: (sql.Database database, int version) async {
  //       await createTables(database);
  //     },
  //   );
  // }
  //
  // // Create new item
  // static Future<int> createItem(String email, String name, String surname, String password/**, String role*/) async {
  //   final db = await CustomerDatabase.db();
  //
  //   final data = {'email': email, 'name': name, 'surname': surname,'password': password,'role':"Walker"};
  //   final id = await db.insert('Customer', data,
  //       conflictAlgorithm: sql.ConflictAlgorithm.replace);
  //   return id;
  // }
  //
  // // Read all items
  // static Future<List<Map<String, dynamic>>> getItems() async {
  //   final db = await CustomerDatabase.db();
  //   return db.query('Customer', orderBy: "id");
  // }
  //
  // // Get a single item by id
  // //We dont use this method, it is for you if you want it.
  // static Future<List<Map<String, dynamic>>> getItem(int id) async {
  //   final db = await CustomerDatabase.db();
  //   return db.query('Customer', where: "id = ?", whereArgs: [id], limit: 1);
  // }
  //
  // // Update an item by id
  // static Future<int> updateItem(
  //     int id, String title, String? descrption) async {
  //   final db = await CustomerDatabase.db();
  //
  //   final data = {
  //     'title': title,
  //     'description': descrption,
  //     'createdAt': DateTime.now().toString()
  //   };
  //
  //   final result =
  //   await db.update('Customer', data, where: "id = ?", whereArgs: [id]);
  //   return result;
  // }
  //
  // // Delete
  // static Future<void> deleteItem(int id) async {
  //   final db = await CustomerDatabase.db();
  //   try {
  //     await db.delete("items", where: "id = ?", whereArgs: [id]);
  //   } catch (err) {
  //     debugPrint("Something went wrong when deleting an item: $err");
  //   }
  // }
