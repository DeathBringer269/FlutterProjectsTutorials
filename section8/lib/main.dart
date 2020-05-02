import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/products_provider.dart';
import './providers/cart.dart';

//screens
import './screen/products_overview_screens.dart';
import './screen/product_detail_screen.dart';
import './screen/cart_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => ProductsProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
      ],
      child: MaterialApp(
        title: "Shop me",
        home: ProductsOverviewScreen(),

        //routes
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
        },

        //theme
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 239, 1),

          //fonts
          fontFamily: 'Lato',

          textTheme:  TextTheme(
            title: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
