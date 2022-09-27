import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  static const String routeName = "/products";
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text(
          "Products",
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          ListTile(
            leading: Container(
              height: 200,
              width: 100,
              child: ClipRect(
                child: Image.asset('assets/green1.jpg'),
              ),
            ),
            title: Text('Onion'),
            subtitle: Text('BDT200'),
            trailing: Text('Selling Price: BDT100'),
          ),
          ListTile(
            leading: Container(
              height: 200,
              width: 100,
              child: ClipRect(
                child: Image.asset('assets/green1.jpg'),
              ),
            ),
            title: Text('Onion'),
            subtitle: Text('BDT200'),
            trailing: Text('Selling Price: BDT100'),
          ),
          ListTile(
            leading: Container(
              height: 200,
              width: 100,
              child: ClipRect(
                child: Image.asset('assets/green1.jpg'),
              ),
            ),
            title: Text('Onion'),
            subtitle: Text('BDT200'),
            trailing: Text('Selling Price: BDT100'),
          ),
          ListTile(
            leading: Container(
              height: 200,
              width: 100,
              child: ClipRect(
                child: Image.asset('assets/green1.jpg'),
              ),
            ),
            title: Text('Onion'),
            subtitle: Text('BDT200'),
            trailing: Text('Selling Price: BDT100'),
          ),
          ListTile(
            leading: Container(
              height: 200,
              width: 100,
              child: ClipRect(
                child: Image.asset('assets/green1.jpg'),
              ),
            ),
            title: Text('Onion'),
            subtitle: Text('BDT200'),
            trailing: Text('Selling Price: BDT100'),
          ),
        ],
      ),
    );
  }
}
