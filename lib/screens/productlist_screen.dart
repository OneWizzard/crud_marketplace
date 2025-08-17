import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/product_provider.dart';

class ProductListScreen extends ConsumerWidget {
  const ProductListScreen({super.key});

  Future<void> _tambahProduk(BuildContext context, WidgetRef ref) async {
    final titleController = TextEditingController();
    await showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: Colors.grey.shade200,
        title: const Text("Tambah Produk"),
        content: TextField(
          controller: titleController,
          decoration: const InputDecoration(
            labelText: "Nama Produk",
            labelStyle: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Batal", style: TextStyle(color: Colors.black)),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade50),
            onPressed: () async {
              if (titleController.text.isNotEmpty) {
                final newProduct = await ref
                    .read(productServiceProvider)
                    .addProduct(titleController.text);

                ref.invalidate(productListProvider);

                if (!context.mounted) return;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                        "Produk '${newProduct.title}' berhasil ditambahkan"),
                  ),
                );
                Navigator.pop(context);
              }
            },
            child: const Text("Simpan", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }

  Future<void> _editProduk(
      BuildContext context, WidgetRef ref, String title, int id) async {
    final titleController = TextEditingController(text: title);
    await showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: Colors.grey.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.grey.shade500),
        ),
        title: const Text("Edit Produk", style: TextStyle(color: Colors.black)),
        content: TextField(
          controller: titleController,
          decoration: const InputDecoration(
            labelText: "Nama Produk",
            labelStyle: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Batal", style: TextStyle(color: Colors.black)),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade50),
            onPressed: () async {
              if (titleController.text.isNotEmpty) {
                await ref
                    .read(productServiceProvider)
                    .updateProduct(titleController.text, id);

                ref.invalidate(productListProvider);

                if (!context.mounted) return;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                        "Produk '${titleController.text}' berhasil diupdate"),
                  ),
                );
                Navigator.pop(context);
              }
            },
            child: const Text("Simpan", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }

  Future<void> _hapusProduk(
      BuildContext context, WidgetRef ref, String title, int id) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: Colors.grey.shade200,
        title: const Text("Hapus Produk"),
        content: Text("Yakin ingin menghapus produk '$title'?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text("Batal", style: TextStyle(color: Colors.black)),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text("Hapus", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );

    if (confirm == true) {
      await ref.read(productServiceProvider).deleteProduct(id);

      ref.invalidate(productListProvider);

      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Produk '$title' berhasil dihapus")),
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(productListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => _tambahProduk(context, ref),
          ),
        ],
      ),
      body: productsAsync.when(
        data: (products) {
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (_, index) {
              final p = products[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.grey.shade300,
                      width: 1.2,
                    ),
                  ),
                  child: ListTile(
                    leading: Text(p.id.toString()),
                    title: Text(p.title),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.blue),
                          onPressed: () =>
                              _editProduk(context, ref, p.title, p.id),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () =>
                              _hapusProduk(context, ref, p.title, p.id),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text("Error: $err")),
      ),
    );
  }
}
