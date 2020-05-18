import 'package:flutter/material.dart';
import '../providers/orders.dart' show Orders;
import 'package:provider/provider.dart';
import '../widget/order_item.dart';
import '../widget/app_drawer.dart';

class OrdersScreen extends StatefulWidget {
  static const routeName = '/orders_screen';

  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  var _isLoading = false;

  @override
  void initState() {
    super.initState();
//    Future.delayed(Duration.zero).then((_) async {
//      setState(() {
//        _isLoading = true;
//      });
//      await Provider.of<Orders>(context, listen: false).fetchAndAndSetOrders();
//      setState(() {
//        _isLoading = false;
//      });
//    });
  }

  @override
  Widget build(BuildContext context) {
//    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Orders"),
      ),
      drawer: AppDrawer(),
      body: FutureBuilder(
          future: Provider.of<Orders>(context, listen: false)
              .fetchAndAndSetOrders(),
          builder: (ctx, dataSnapShot) {
            if (dataSnapShot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (dataSnapShot.error != null) {
              return Center(child: Text("Test"));
            } else {
              return Consumer<Orders>(
                builder: (ctx, orderData, child) => ListView.builder(
                  itemCount: orderData.orders.length,
                  itemBuilder: (ctx, index) =>
                      OrderItem(orderData.orders[index]),
                ),
              );
            }
          }),
    );
  }
}
