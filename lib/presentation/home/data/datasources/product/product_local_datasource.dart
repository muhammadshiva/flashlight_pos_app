import 'package:flashlight_pos_app/presentation/home/data/models/product/response/product_model.dart';
import 'package:sqflite/sqflite.dart';

class ProductLocalDatasource {
  ProductLocalDatasource._init();

  static final ProductLocalDatasource instance = ProductLocalDatasource._init();

  static Database? _database;

  final String tableProducts = 'products';
  final String tableCategories = 'categories';

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = '$dbPath/$filePath';

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute(
      '''CREATE TABLE IF NOT EXISTS $tableCategories (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        created_at TEXT,
        updated_at TEXT,
        deleted_at TEXT
      )''',
    );

    await db.execute(
      '''CREATE TABLE IF NOT EXISTS $tableProducts (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        description TEXT,
        price REAL NOT NULL,
        category_id INTEGER,
        image TEXT,
        created_at TEXT,
        updated_at TEXT,
        deleted_at TEXT,
        FOREIGN KEY (category_id) REFERENCES $tableCategories (id) ON DELETE SET NULL
      )''',
    );
  }

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('flashlight.db');
    return _database!;
  }

  Future<void> removeAllProduct() async {
    final db = await instance.database;
    await db.delete(tableProducts);
    await db.delete(tableCategories);
  }

  //* Insert data from API
  //^ Categories
  Future<void> insertCategory(List<Category> categories) async {
    final db = await instance.database;
    for (var category in categories) {
      await db.insert(tableCategories, category.toJson());
    }
  }

  //^ Products
  Future<void> insertProduct(List<Product> products) async {
    final db = await instance.database;
    for (var product in products) {
      await db.insert(tableProducts, product.toJson());
    }
  }
}
