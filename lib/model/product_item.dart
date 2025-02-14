class ProductItem {
  final String? imagePath;
  final String? name;
  final dynamic price; 
  final String? description;


  ProductItem({
    required this.imagePath,
    required this.name,
    required this.price,
    required this.description,
  });

  factory ProductItem.fromJson(Map<String, dynamic> json) {
    return ProductItem(
      imagePath: json['img'] != null ? "https://orientonline.info${json['img']}" : null,
      name: json['name'],
      price: json['price'],
      description: json['description'],
    );
  }
}


