import 'package:flutter/material.dart';
import 'package:flutter_ecom/models/cart.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productid = ModalRoute.of(context).settings.arguments as String;
    final loadedPdt = Provider.of<Products>(context).findbyId(productid);
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedPdt.name),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.network(loadedPdt.imgUrl)),
          ),
          Text(
            'Price: \$ ${loadedPdt.price}',
            style: TextStyle(fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              '${loadedPdt.description}',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cart.addItem(loadedPdt.id, loadedPdt.name, loadedPdt.price);
        },
        child: Icon(
          Icons.shopping_cart,
          size: 30,
        ),
      ),
    );
  }
}
