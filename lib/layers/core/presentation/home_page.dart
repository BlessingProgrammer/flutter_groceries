import 'package:flutter/material.dart';
import 'package:flutter_groceries/layers/core/data/local/database_service.dart';
import 'package:flutter_groceries/layers/core/domain/model/category.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DatabaseService _databaseService = DatabaseService.instance;

  String? _categoryName = null;
  String? _categoryImage = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: _addCategoryButton());
  }

  Widget _addCategoryButton() {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder:
              (_) => AlertDialog(
                title: const Text('Add Category'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          _categoryName = value;
                        });
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Category name',
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          _categoryImage = value;
                        });
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Category image',
                      ),
                    ),
                    SizedBox(height: 30),
                    MaterialButton(
                      onPressed: () {
                        Category category = Category();
                        if (_categoryName == null || _categoryName == "") {
                          return;
                        }
                        category.name = _categoryName!;
                        category.image = _categoryImage;
                        _databaseService.addCategory(category);
                        setState(() {
                          _categoryName = null;
                          _categoryImage = null;
                        });
                        Navigator.pop(context);
                      },
                      color: Theme.of(context).colorScheme.primary,
                      child: const Text(
                        "Done",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
        );
      },
      child: const Icon(Icons.add),
    );
  }
}
