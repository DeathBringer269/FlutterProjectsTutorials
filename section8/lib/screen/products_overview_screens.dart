import 'package:flutter/material.dart';

//widgets
import '../widget/product_item.dart';
import '../widget/products_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop'),
      ),
      body: ProductsGrid(),
    );
  }
}

