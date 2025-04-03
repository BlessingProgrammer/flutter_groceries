class FakeCategory {
  late String name;
  late String image;

  FakeCategory({required this.name, required this.image});

  static List<FakeCategory> categoryList() {
    List<FakeCategory> list = <FakeCategory>[
      FakeCategory(
        name: 'Frash Fruits & Vegetable',
        image: 'assets/images/vegetable.png',
      ),
      FakeCategory(name: 'Cooking Oil & Ghee', image: 'assets/images/oil.png'),
      FakeCategory(name: 'Meat & Fish', image: 'assets/images/meat.png'),
      FakeCategory(name: 'Bakery & Snacks', image: 'assets/images/bakery.png'),
      FakeCategory(name: 'Beverages', image: 'assets/images/beverages.png'),
      FakeCategory(
        name: 'Frash Fruits & Vegetable',
        image: 'assets/images/vegetable.png',
      ),
      FakeCategory(name: 'Cooking Oil & Ghee', image: 'assets/images/oil.png'),
      FakeCategory(name: 'Meat & Fish', image: 'assets/images/meat.png'),
      FakeCategory(name: 'Bakery & Snacks', image: 'assets/images/bakery.png'),
      FakeCategory(name: 'Beverages', image: 'assets/images/beverages.png'),
    ];
    return list;
  }
}
