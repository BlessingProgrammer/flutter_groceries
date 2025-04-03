class Product {
  late String id;
  late String name;
  late String description;
  late String categoryId;

  Product(this.id, this.name, this.description);

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'category_id': categoryId,
    };
  }

  @override
  String toString() {
    return 'Product{id: $id, name: $name, description: $description, categoryId: $categoryId}';
  }
}
