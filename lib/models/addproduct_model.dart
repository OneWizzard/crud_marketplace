class AddProduct {
  final int id;
  final String title;

  AddProduct({
    required this.id,
    required this.title,
  });

  factory AddProduct.fromJson(Map<String, dynamic> json) {
    return AddProduct(
      id: json['id'],
      title: json['title'],
    );
  }
}