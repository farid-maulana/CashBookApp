import 'package:sqflite/sqflite.dart';

class DbHelper {
  // Create table
  static Future<void> createTable(Database database) async {
    await database.execute("""
      CREATE TABLE transactions (
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        date TEXT,
        nominal INTEGER,
        description TEXT,
        category TEXT
      )
    """);
  }

  // Initial db
  static Future<Database> db() async {
    return openDatabase(
      'cashflow_app.db',
      version: 1,
      onCreate: (Database database, int version) async {
        await createTable(database);
      },
    );
  }

  // Create new transaction
  static Future<int> createTransaction(
    String date,
    int nominal,
    String description,
    String category,
  ) async {
    final db = await DbHelper.db();

    final data = {
      'date': date,
      'nominal': nominal,
      'description': description,
      'category': category,
    };

    final id = await db.insert(
      'transactions',
      data,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    return id;
  }

  // Fetch all data
  static Future<List<Map<String, dynamic>>> fetchTransactions() async {
    final db = await DbHelper.db();
    return db.query('transactions', orderBy: 'id DESC');
  }
}
