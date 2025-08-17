class UpdateProduct {
  final int id;
  final String title;

  UpdateProduct({
    required this.id,
    required this.title,
  });

  factory UpdateProduct.fromJson(Map<String, dynamic> json) {
    return UpdateProduct(
      id: json['id'],
      title: json['title'],
    );
  }
}

class UpdateParams {
  final String title;
  final int id;
  UpdateParams(this.title, this.id);
}