class Product {
  final String id;
  final String name;
  final double price;
  final String imageUrl;
  final double? discount;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    this.discount,
  });
}
