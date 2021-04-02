import 'package:flutter/material.dart';
import 'package:flutter_ecom/models/cart.dart';
import 'package:provider/provider.dart';

class CartPdt extends StatelessWidget {
  final String id;
  final String productid;
  final double price;
  final int quantity;
  final String name;

  const CartPdt(
      {this.id, this.productid, this.price, this.quantity, this.name});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
      ),
      onDismissed: (direction) {
        Provider.of<Cart>(context, listen: false).removeItem(productid);
      },
      child: Card(
          child: ListTile(
        leading: CircleAvatar(
          child: FittedBox(
            child: Text('\$$price'),
          ),
        ),
        title: Text(name),
        subtitle: Text("Total: \$${(price * quantity)}"),
        trailing: Text('$quantity x'),
      )),
    );
  }
}
