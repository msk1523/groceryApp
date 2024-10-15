import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

class ProductGridScreen extends StatelessWidget {
  const ProductGridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This is a dummy list of products. In a real app, we'd fetch this from an API or database.
    final List<Product> products = [
      Product(
          id: '1',
          name: 'Apple',
          price: 200,
          imageUrl:
              'https://static.wikia.nocookie.net/fruits-information/images/2/2b/Apple.jpg/revision/latest/thumbnail/width/360/height/450?cb=20180802112257'),
      Product(
          id: '2',
          name: 'Banana',
          price: 50,
          imageUrl:
              'https://mana.md/wp-content/uploads/2021/11/banana-1025109_1280-1024x793.jpg',
          discount: 10),
      Product(
          id: '3',
          name: 'Orange',
          price: 185,
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9VYDmsnzYoXyk-g2o7zkg31_iqEqsYkSbtA&s'),
      Product(
          id: '4',
          name: 'Milk',
          price: 45,
          imageUrl:
              'https://image.made-in-china.com/202f0j00aJmlTwQdAkuz/Classic-Milk-Carton-1L-and-Diamond-Milk-Carton-1-5L.webp',
          discount: 5),
      // Add more products as needed
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Grocery Products'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(product: products[index]);
        },
      ),
    );
  }
}
