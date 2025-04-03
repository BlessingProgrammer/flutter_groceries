class FakeProduct {
  late String name;
  late String image;
  late String description;
  late double price;

  FakeProduct({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });

  static List<FakeProduct> productList() {
    List<FakeProduct> list = <FakeProduct>[
      FakeProduct(
        name: 'Organic Bananas',
        image: 'assets/images/banana.png',
        description: '7pcs, Priceg',
        price: 4.99,
      ),
      FakeProduct(
        name: 'Red Apple',
        image: 'assets/images/apple_vector.png',
        description: '1kg, Priceg',
        price: 4.99,
      ),
      FakeProduct(
        name: 'Organic Bananas',
        image: 'assets/images/banana.png',
        description: '7pcs, Priceg',
        price: 4.99,
      ),
      FakeProduct(
        name: 'Red Apple',
        image: 'assets/images/apple_vector.png',
        description: '1kg, Priceg',
        price: 4.99,
      ),
      FakeProduct(
        name: 'Organic Bananas',
        image: 'assets/images/banana.png',
        description: '7pcs, Priceg',
        price: 4.99,
      ),
      FakeProduct(
        name: 'Organic Bananas',
        image: 'assets/images/banana.png',
        description: '7pcs, Priceg',
        price: 4.99,
      ),
      FakeProduct(
        name: 'Red Apple',
        image: 'assets/images/apple_vector.png',
        description: '1kg, Priceg',
        price: 4.99,
      ),
      FakeProduct(
        name: 'Organic Bananas',
        image: 'assets/images/banana.png',
        description: '7pcs, Priceg',
        price: 4.99,
      ),
    ];
    return list;
  }
}
