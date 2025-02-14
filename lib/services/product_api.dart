import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:e_commerce/model/product_item.dart';

class ProductApi {
  final Dio dio;
  ProductApi(this.dio);

  Future<List<ProductItem>> getProducts() async {
    try {
      Response response =
          await dio.get('https://orientonline.info/api/products');

      List<dynamic> productList = response.data["products"];
      List<ProductItem> products = productList.map((item) => ProductItem.fromJson(item)).toList();

      return products;
    } catch (e) {
      log(e.toString());
      throw Exception('Oops, there was an error. Try later.');
    }
  }
}
