import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; 
import '../providers/product_provider.dart'; 
import '../models/productdetail_model.dart';

class ProductDetailScreen extends ConsumerWidget {
  final int productId;

  const ProductDetailScreen({super.key, required this.productId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productDetailAsync = ref.watch(productDetailProvider(productId));

    return Scaffold(
      appBar: AppBar(title: const Text('Product Detail')),
      body: productDetailAsync.when(
        data: (product) => _buildDetail(context, product),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Error: $err')),
      ),
    );
  }

  Widget _buildDetail(BuildContext context, ProductDetail product) {
    final discountedPrice =
        product.price * (1 - product.discountPercentage / 100);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Images
          SizedBox(
            height: 250,
            child: PageView(
              children: product.images
                  .map((img) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(img, fit: BoxFit.cover),
                        ),
                      ))
                  .toList(),
            ),
          ),
          const SizedBox(height: 16),

          // Title
          Text(
            product.title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),

          // Price with discount
          Row(
            children: [
              Text(
                "\$${product.price.toStringAsFixed(2)}",
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                "\$${discountedPrice.toStringAsFixed(2)}",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                "-${product.discountPercentage.toStringAsFixed(0)}%",
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),

          // Rating & Stock
          Row(
            children: [
              Icon(Icons.star, color: Colors.amber[700]),
              Text("${product.rating}"),
              const SizedBox(width: 16),
              Text(
                "Stock: ${product.stock}",
                style: TextStyle(
                  color: product.stock > 0 ? Colors.green : Colors.red,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Description
          Text(product.description, style: const TextStyle(fontSize: 16)),
          const SizedBox(height: 16),

          // Additional Info
          const Text(
            "Product Information",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          _infoTile(Icons.business, "Brand", product.brand),
          _infoTile(Icons.category, "Category", product.category),
          _infoTile(Icons.confirmation_number, "SKU", product.sku),
          _infoTile(Icons.scale, "Weight", "${product.weight}g"),
          _infoTile(Icons.verified, "Warranty", product.warrantyInformation),
          _infoTile(Icons.local_shipping, "Shipping", product.shippingInformation),
          _infoTile(
            product.availabilityStatus.toLowerCase().contains("in stock")
                ? Icons.check_circle
                : Icons.remove_circle,
            "Availability",
            product.availabilityStatus,
          ),
          _infoTile(Icons.assignment_return, "Return Policy", product.returnPolicy),
          _infoTile(Icons.format_list_numbered, "Min. Order Qty",
              product.minimumOrderQuantity.toString()),
          const SizedBox(height: 16),

          // Reviews
          const Text("Reviews",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),
          ...product.reviews.map(
            (review) => ListTile(
              leading: Icon(Icons.person, color: Colors.blue[700]),
              title: Text(review.reviewerName),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: List.generate(
                      review.rating,
                      (index) => const Icon(Icons.star,
                          color: Colors.amber, size: 16),
                    ),
                  ),
                  Text(review.comment),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoTile(IconData icon, String label, String value) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: Colors.blue),
      title: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(value),
    );
  }
}
