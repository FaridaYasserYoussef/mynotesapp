import 'package:sqflite/sqflite.dart';

Future<Database> openMyDatabase() async {
  // Replace 'your_database.db' with the desired name of your database file.
  String path = '${await getDatabasesPath()}notes.db';

  // Open the database with the `openDatabase` method.
  Database database = await openDatabase(path);

  return database;
}
