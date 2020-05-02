import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/product.dart';
import './product_item.dart';
import '../providers/products_provider.dart';

class ProductsGrid extends StatelessWidget {
  final bool showFavorites;

  ProductsGrid(this.showFavorites);

  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<ProductsProvider>(context);
    final loadedProducts =
        showFavorites ? productsProvider.favoriteItems : productsProvider.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: loadedProducts.length,
      itemBuilder: (ctx, index) {
        Product item = loadedProducts[index];
        return ChangeNotifierProvider.value(
          value: loadedProducts[index],
          child: ProductItem(
//            item.id,
//            item.title,
//            item.imageUrl,
              ),
        );
      },
    );
  }
}
