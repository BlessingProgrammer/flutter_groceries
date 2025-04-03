class ProductNutrition{
  late int id;
  late String nutrition;
  late String productId;

  ProductNutrition(this.id, this.nutrition, this.productId);

  Map<String, Object?> toMap() {
    return {'id': id, 'nutrition': nutrition, 'product_id': productId};
  }
}