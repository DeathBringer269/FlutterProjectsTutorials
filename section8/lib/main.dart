import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/products_provider.dart';

//screens
import './screen/products_overview_screens.dart';
import './screen/product_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //version 3 or higher uses create instead of builder
      create: (ctx) => ProductsProvider(),
      child: MaterialApp(
        title: "Shop me",
        home: ProductsOverviewScreen(),

        //routes
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        },

        //theme
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 239, 1),

          //fonts
          fontFamily: 'Lato',
        ),
      ),
    );
  }
}
