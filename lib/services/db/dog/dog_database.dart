import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:walkwithme/services/db/database_helper.dart';

class DogDatabase {
  static const table = 'Dog';

  static const columnId = 'id';
  static const columnName = 'name';
  static const columnGender = 'gender';
  static const columnBreed = 'breed';
  static const columnOwner = 'owner';


  // Inserts a row in the database where each key in the Map is a column name
  // and the value is the column value. The return value is the id of the
  // inserted row.
  Future<int> insert(Map<String, dynamic> row) async {
    return await DatabaseHelper.getDb().insert(table,row);
  }

  Future<List<Map<String, dynamic>>> getById(int id) async {
    return await DatabaseHelper.getDb().rawQuery("SELECT * FROM $table WHERE id = '$id'");
  }

  Future<List<Map<String, dynamic>>> getByOwner(String owner) async {
    return await DatabaseHelper.getDb().rawQuery("SELECT * FROM $table WHERE owner = '$owner'");
  }

  // All of the rows are returned as a list of maps, where each map is
  // a key-value list of columns.
  Future<List<Map<String, dynamic>>> queryAllRows() async {
    return await  DatabaseHelper.getDb().query(table);
  }

  // All of the methods (insert, query, update, delete) can also be done using
  // raw SQL commands. This method uses a raw query to give the row count.
  Future<int> queryRowCount() async {
    final results = await  DatabaseHelper.getDb().rawQuery('SELECT COUNT(*) FROM $table');
    return Sqflite.firstIntValue(results) ?? 0;
  }

  // We are assuming here that the id column in the map is set. The other
  // column values will be used to update the row.
  Future<int> update(Map<String, dynamic> row) async {
    int id = row[columnId];
    return await  DatabaseHelper.getDb().update(
      table,
      row,
      where: '$columnId = ?',
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