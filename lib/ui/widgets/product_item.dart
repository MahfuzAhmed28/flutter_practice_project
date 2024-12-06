

import 'package:flutter/material.dart';

import '../../models/product.dart';
import '../screens/update_product_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key,required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //leading: Image.network('https://adminapi.applegadgetsbd.com/storage/media/large/iPhone-14-Starlight-8954.jpg'),
      title: Text(product.productName ?? ''),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Product Code: ${product.productCode ?? ''}'),
          Text('Product Quantity: ${product.quantity ?? ''}'),
          Text('Price: ${product.unitPrice ?? ''}'),
          Text('Total Price: ${product.totalPrice ?? ''}'),
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