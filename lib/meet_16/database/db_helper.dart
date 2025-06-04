import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static Future<Database> initDB() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      version: 1,
      join(dbPath, 'ppkd_b_2.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, username TEXT, email TEXT, phone TEXT, password TEXT)',
        );
      },
    );
  }

  static Future<void> registerUser(
    String name,
    String username,
    String email,
    String phone,
    String password,
  ) async {
    final db = await initDB();

    await db.insert('users', {
      'name': name,
      'username': username,
      'email': email,
      'phone': phone,
      'password': password,
    }, conflictAlgorithm: ConflictAlgorithm.replace);
    print("User registered successfully");
  }
}
