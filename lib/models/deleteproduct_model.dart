class DeleteProduct {
  final int id;
  final String title;
  final bool isDeleted;

  DeleteProduct({
    required this.id,
    required this.title,
    required this.isDeleted
  });

  factory DeleteProduct.fromJson(Map<String, dynamic> json) {
    return DeleteProduct(
      id: json['id'],
      title: json['title'],
      isDeleted: json['isDeleted'],
    );
  }
}