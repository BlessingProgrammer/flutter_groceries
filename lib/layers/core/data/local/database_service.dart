import 'package:flutter_groceries/layers/core/domain/model/product.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter_groceries/layers/core/domain/model/category.dart';

class DatabaseService {
  static Database? _db;
  static final DatabaseService instance = DatabaseService._constructor();

  final String _categoriesTableName = 'categories';
  final String _categoriesIdColumnName = 'id';
  final String _categoriesNameColumnName = 'name';
  final String _categoriesImageColumnName = 'image';

  final String _productsTableName = 'products';
  final String _productsIdColumnName = "id";
  final String _productsNameColumnName = "name";
  final String _productsDescriptionColumnName = "description";
  final String _productsCategoryFKIdColumnName = "category_id";

  final String _productImageTableName = 'product_images';
  final String _productImageIdColumnName = 'id';
  final String _productImageImageColumnName = 'image';
  final String _productImageProductFKIdColumnName = 'product_id';

  final String _productNutritionTableName = 'product_nutritions';
  final String _productNutritionIdColumnName = 'id';
  final String _productNutritionNutritionColumnName = 'nutrition';
  final String _productNutritionProductFKIdColumnName = 'product_id';

  DatabaseService._constructor();

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await getDatabase();
    return _db!;
  }

  Future<Database> getDatabase() async {
    final databaseDirPath = await getDatabasesPath();
    final databasePath = join(databaseDirPath, "groceries_db.db");
    final database = await openDatabase(
      databasePath,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
        CREATE TABLE $_categoriesTableName (
          $_categoriesIdColumnName INTEGER PRIMARY KEY AUTOINCREMENT,
          $_categoriesNameColumnName TEXT NOT NULL,
          $_categoriesImageColumnName TEXT
        )
        ''');
        await db.execute('''
        CREATE TABLE $_productsTableName (
          $_productsIdColumnName TEXT PRIMARY KEY,
          $_productsNameColumnName TEXT NOT NULL,
          $_productsDescriptionColumnName TEXT,
          $_productsCategoryFKIdColumnName TEXT,
          FOREIGN KEY ($_productsCategoryFKIdColumnName) REFERENCES
          $_categoriesTableName($_categoriesIdColumnName)
        )
        ''');
        await db.execute('''
        CREATE TABLE $_productImageTableName (
          $_productImageIdColumnName INTEGER PRIMARY KEY,
          $_productImageImageColumnName TEXT NOT NULL,
          $_productImageProductFKIdColumnName TEXT,
          FOREIGN KEY ($_productImageProductFKIdColumnName) REFERENCES
          $_productsTableName($_productsIdColumnName)
        )
        ''');
        await db.execute('''
        CREATE TABLE $_productNutritionTableName (
          $_productNutritionIdColumnName INTEGER PRIMARY KEY,
          $_productNutritionNutritionColumnName TEXT NOT NULL,
          $_productNutritionProductFKIdColumnName TEXT,
          FOREIGN KEY ($_productNutritionProductFKIdColumnName) REFERENCES
          $_productsTableName($_productsIdColumnName)
        )
        ''');
      },
    );
    return database;
  }

  void addCategory(Category category) async {
    final db = await database;
    await db.insert(_categoriesTableName, category.toMap());
  }

  void addProduct(Product product, String image) async {
    final db = await database;
    await db.insert(_productsTableName, product.toMap());
    await db.insert(_productImageTableName, {
      _productImageImageColumnName: image,
      _productImageProductFKIdColumnName: product.id,
    });
  }

  void addProductImage(String productId, String image) async {
    final db = await database;
    await db.insert(_productImageTableName, {
      _productImageImageColumnName: image,
      _productImageProductFKIdColumnName: productId,
    });
  }

  void addProductNutrition(String productId, String nutrition) async {
    final db = await database;
    await db.insert(_productNutritionTableName, {
      _productNutritionNutritionColumnName: nutrition,
      _productNutritionProductFKIdColumnName: productId,
    });
  }
}
