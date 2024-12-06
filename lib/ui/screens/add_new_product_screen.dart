import 'package:flutter/material.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  static const String name='/add-new-product';
  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreeState();
}

class _AddNewProductScreeState extends State<AddNewProductScreen> {
  final TextEditingController _nameTEController= TextEditingController();
  final TextEditingController _priceTEController= TextEditingController();
  final TextEditingController _totalPriceTEController= TextEditingController();
  final TextEditingController _imageTEController= TextEditingController();
  final TextEditingController _quantityTEController= TextEditingController();
  final TextEditingController _codeTEController= TextEditingController();

  final GlobalKey<FormState> _formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new Product'),
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
      key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _nameTEController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
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
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.number,
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
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.number,
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
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.number,
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
              autovalidateMode: AutovalidateMode.onUserInteraction,
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
            ElevatedButton(
              onPressed: ()
              {
                if(_formKey.currentState!.validate()){

                }
              },
              child: Text('Add Product'))
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
