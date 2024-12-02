

import 'package:flutter/material.dart';

import '../screens/update_product_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //leading: Image.network('https://adminapi.applegadgetsbd.com/storage/media/large/iPhone-14-Starlight-8954.jpg'),
      title: Text("Product Name"),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Product Code: #CODE'),
          Text('Product Quantity: 10'),
          Text('Price: 75000'),
          Text('Total Price: 750000'),
        ],
      ),
      trailing: Wrap(
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, UpdateProductScreen.name);
            },
            icon: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}