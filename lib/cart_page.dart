import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _CartPageState createState() => new _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), centerTitle: true, backgroundColor: Color(0xff66cdaa)),
      body: Text("Halaman Keranjang"),
    );
  }
}
