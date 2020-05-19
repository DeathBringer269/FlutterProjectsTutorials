import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section8/screen/edit_product_screen.dart';
import 'package:section8/screen/orders_screen.dart';
import './providers/products_provider.dart';
import './providers/cart.dart';
import './providers/orders.dart';

//screens
import './screen/products_overview_screens.dart';
import './screen/product_detail_screen.dart';
import './screen/cart_screen.dart';
import './screen/orders_screen.dart';
import './screen/user_products_screen.dart';
import './screen/edit_product_screen.dart';
import './screen/auth_screen.dart';

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
        ChangeNotifierProvider(
          create: (ctx) => Orders(),
        ),
      ],
      child: MaterialApp(
        title: "Shop me",
//        home: ProductsOverviewScreen(),

        home: AuthScreen(),
        //routes
        routes: {
          ProductsOverviewScreen.routeName: (ctx) => ProductsOverviewScreen(),
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
          UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
          EditProductScreen.routeName: (ctx) => EditProductScreen(),
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
