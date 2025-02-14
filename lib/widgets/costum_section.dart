
import 'package:dio/dio.dart';
import 'package:e_commerce/model/product_item.dart';
import 'package:e_commerce/services/product_api.dart';
import 'package:e_commerce/widgets/product_container.dart';
import 'package:flutter/material.dart';

class CustomSection extends StatefulWidget {
  const CustomSection({super.key, required this.title});
  final String title;

  @override
  State<CustomSection> createState() => _CustomSectionState();
}

class _CustomSectionState extends State<CustomSection> {
  late Future<List<ProductItem>> products;

  @override
  void initState() {
    super.initState();
    products = ProductApi(Dio()).getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.title,style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('See All', style: TextStyle(color: Colors.blue)),
            ],
          ),
        ),
        const SizedBox(height: 10),


        FutureBuilder<List<ProductItem>>(
          future: products,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              final items = snapshot.data!;

              if (items.isEmpty) {
                return const Center(child: Text('No products available'));
              }

              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  items.length >= 2 ? 2 : items.length,
                  (index) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CustomProductCard(
                        name: items[index].name ?? 'No Title',
                        price: '${items[index].price}',
                        image: items[index].imagePath ?? '/images/clothes.png', 
                        description: items[index].description ?? "Details aren't available",
                      ),
                    ),
                  ),
                ),
              );
            } else {
              return const Center(child: Text('No products found'));
            }
          },
        ),
      ],
    );
  }
}