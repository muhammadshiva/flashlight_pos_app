import 'dart:async';
import 'package:flashlight_pos_app/presentation/home/data/models/product/response/product_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static Database? _database;
  static const String _tableName = 'products';

  // Singleton instance
  static final DatabaseHelper instance = DatabaseHelper._init();
  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'products.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $_tableName (
        id INTEGER PRIMARY KEY,
        name TEXT,
        description TEXT,
        price INTEGER,
        category_id INTEGER,
        image TEXT,
        created_at TEXT,
        updated_at TEXT
      )
    ''');
  }

  // **Insert Product**
  Future<void> insertProducts(List<Product> products) async {
    final db = await database;
    for (var product in products) {
      await db.insert(
        _tableName,
        product.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  // **Get All Products**
  Future<List<Product>> getProducts() async {
    final db = await database;
    final result = await db.query(_tableName);
    return result.map((json) => Product.fromJson(json)).toList();
  }

  // **Clear Database**
  Future<void> clearDatabase() async {
    final db = await database;
    await db.delete(_tableName);
  }
}
