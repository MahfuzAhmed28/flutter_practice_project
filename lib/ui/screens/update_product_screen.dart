import 'package:flutter/material.dart';

class UpdateProductScreen extends StatefulWidget {
  const UpdateProductScreen({super.key});

  static const String name='/update-product';
  @override
  State<UpdateProductScreen> createState() => _AddNewProductScreeState();
}

class _AddNewProductScreeState extends State<UpdateProductScreen> {
  final TextEditingController _nameTEController= TextEditingController();
  final TextEditingController _priceTEController= TextEditingController();
  final TextEditingController _totalPriceTEController= TextEditingController();
  final TextEditingController _imageTEController= TextEditingController();
  final TextEditingController _quantityTEController= TextEditingController();
  final TextEditingController _codeTEController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Product'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: _buildProductForm(),
        ),
      ),
    );
  }

  Widget _buildProductForm() {
    return Form(
        child: Column(
          children: [
            TextFormField(
              controller: _nameTEController,
              decoration: InputDecoration(
                hintText: 'Name',
                labelText: 'Product Name',
              ),
              validator: (String? value){
                if(value?.trim().isEmpty ?? true){
                  return 'Enter Product Name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _priceTEController,
              decoration: InputDecoration(
                hintText: 'Price',
                labelText: 'Product Price',
              ),
              validator: (String? value){
                if(value?.trim().isEmpty ?? true){
                  return 'Enter Product Price';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _totalPriceTEController,
              decoration: InputDecoration(
                hintText: 'Total Price',
                labelText: 'Product Total Price',
              ),
              validator: (String? value){
                if(value?.trim().isEmpty ?? true){
                  return 'Enter Product Total Price';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _quantityTEController,
              decoration: InputDecoration(
                hintText: 'Quantity',
                labelText: 'Product Quantity',
              ),
              validator: (String? value){
                if(value?.trim().isEmpty ?? true){
                  return 'Enter Product Quantity';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _codeTEController,
              decoration: InputDecoration(
                hintText: 'Code',
                labelText: 'Product Code',
              ),
              validator: (String? value){
                if(value?.trim().isEmpty ?? true){
                  return 'Enter Product Code';
                }
                return null;
              },
            ),
            //TextFormField(),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {}, child: Text('Update Product'))
          ],
        ),
      );
  }

  @override
  void dispose(){
    _codeTEController.dispose();
    _nameTEController.dispose();
    _priceTEController.dispose();
    _quantityTEController.dispose();
    _totalPriceTEController.dispose();
    super.dispose();
  }
}