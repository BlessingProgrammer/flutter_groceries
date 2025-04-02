class ProductImage {
  late int id;
  late String image;
  late String productId;

  ProductImage(this.id, this.image, this.productId);

  Map<String, Object?> toMap() {
    return {'id': id, 'image': image, 'product_id': productId};
  }
}
