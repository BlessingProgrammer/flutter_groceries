class Category {
  int? id;
  late String name;
  String? image;

  Map<String, Object?> toMap() {
    var map = <String, Object?>{'name': name, 'image': image};
    if (id != null) {
      map['id'] = id;
    }
    return map;
  }

  Category();

  @override
  String toString() {
    return 'Category{id: $id, name: $name, image: $image}';
  }
}
