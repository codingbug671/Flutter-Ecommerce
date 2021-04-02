import 'package:flutter/material.dart';
import 'package:flutter_ecom/screens/cart_screen.dart';
import 'package:flutter_ecom/screens/homepage.dart';
import 'package:flutter_ecom/screens/pdt_detail_screen.dart';
import 'package:provider/provider.dart';

import 'models/orders.dart';
import 'models/products.dart';
import 'models/cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Products()),
        ChangeNotifierProvider.value(value: Product()),
        ChangeNotifierProvider.value(value: Cart()),
        ChangeNotifierProvider.value(value: Orders())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter E-commerce App',
          theme: ThemeData(
            primaryColor: Colors.teal,
            accentColor: Colors.white,
          ),
          home: HomePage(),
          routes: {
            DetailPage.routeName: (context) => DetailPage(),
            CartScreen.routeName: (context) => CartScreen(),
          }),
    );
  }
}
