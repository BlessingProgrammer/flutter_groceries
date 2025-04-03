class FakeProduct {
  late int id;
  late String name;
  late String image;
  late String description;
  late double price;

  FakeProduct({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });

  static List<FakeProduct> productList() {
    List<FakeProduct> list = <FakeProduct>[
      FakeProduct(
        id: 1,
        name: 'Organic Bananas',
        image: 'assets/images/banana.png',
        description: '7pcs, Priceg',
        price: 4.99,
      ),
      FakeProduct(
        id: 2,
        name: 'Red Apple',
        image: 'assets/images/apple_vector.png',
        description: '1kg, Priceg',
        price: 4.99,
      ),
      FakeProduct(
        id: 3,
        name: 'Organic Bananas',
        image: 'assets/images/banana.png',
        description: '7pcs, Priceg',
        price: 4.99,
      ),
      FakeProduct(
        id: 4,
        name: 'Red Apple',
        image: 'assets/images/apple_vector.png',
        description: '1kg, Priceg',
        price: 4.99,
      ),
      FakeProduct(
        id: 5,
        name: 'Organic Bananas',
        image: 'assets/images/banana.png',
        description: '7pcs, Priceg',
        price: 4.99,
      ),
      FakeProduct(
        id: 6,
        name: 'Organic Bananas',
        image: 'assets/images/banana.png',
        description: '7pcs, Priceg',
        price: 4.99,
      ),
      FakeProduct(
        id: 7,
        name: 'Red Apple',
        image: 'assets/images/apple_vector.png',
        description: '1kg, Priceg',
        price: 4.99,
      ),
      FakeProduct(
        id: 8,
        name: 'Organic Bananas',
        image: 'assets/images/banana.png',
        description: '7pcs, Priceg',
        price: 4.99,
      ),
    ];
    return list;
  }
}
