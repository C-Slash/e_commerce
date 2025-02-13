class ProductItem {
  final String? imagePath;
  final String? name;
  final dynamic price; 

  ProductItem({
    required this.imagePath,
    required this.name,
    required this.price,
  });

  factory ProductItem.fromJson(Map<String, dynamic> json) {
    return ProductItem(
      imagePath: json['img'],
      name: json['name'],
      price: json['price'],
    );
  }
}