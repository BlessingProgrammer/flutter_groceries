import 'dart:ui';

import 'package:flutter/material.dart';

import '../../presentation/ui/theme/color.dart';

class FakeCategory {
  late String name;
  late String image;
  late Color color;

  FakeCategory({required this.name, required this.image, required this.color});

  static List<FakeCategory> categoryList() {
    List<FakeCategory> list = <FakeCategory>[
      FakeCategory(
        name: 'Frash Fruits & Vegetable',
        image: 'assets/images/vegetable.png',
        color: algae,
      ),
      FakeCategory(
        name: 'Cooking Oil & Ghee',
        image: 'assets/images/oil.png',
        color: Colors.redAccent,
      ),
      FakeCategory(
        name: 'Meat & Fish',
        image: 'assets/images/meat.png',
        color: Colors.pinkAccent,
      ),
      FakeCategory(
        name: 'Bakery & Snacks',
        image: 'assets/images/bakery.png',
        color: Colors.brown,
      ),
      FakeCategory(
        name: 'Beverages',
        image: 'assets/images/beverages.png',
        color: Colors.blueAccent,
      ),
      FakeCategory(
        name: 'Frash Fruits & Vegetable',
        image: 'assets/images/vegetable.png',
        color: Colors.greenAccent,
      ),
      FakeCategory(
        name: 'Cooking Oil & Ghee',
        image: 'assets/images/oil.png',
        color: Colors.yellowAccent,
      ),
      FakeCategory(
        name: 'Meat & Fish',
        image: 'assets/images/meat.png',
        color: Colors.red,
      ),
      FakeCategory(
        name: 'Bakery & Snacks',
        image: 'assets/images/bakery.png',
        color: Colors.purpleAccent,
      ),
      FakeCategory(
        name: 'Beverages',
        image: 'assets/images/beverages.png',
        color: Colors.orangeAccent,
      ),
    ];
    return list;
  }
}
