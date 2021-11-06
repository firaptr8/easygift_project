import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _CartPageState createState() => new _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final List<Products> prod = ProductList.getProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: prod.length > 0
            ? ListView.builder(
                itemCount: prod.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: ProductsCard(products: prod[index]),
                    key: UniqueKey(),
                  );
                })
            : Center(child: Text('No Items')),
      ),
    );
  }
}

class Products {
  final String kode;
  final String total;
  final String tanggal;
  final String urlImage;

  Products(
      {this.kode = "", this.total = "", this.tanggal = "", this.urlImage = ""});
}

class ProductList {
  static List<Products> getProducts() {
    return [
      Products(
          kode: "A1",
          total: "120.000",
          tanggal: "25 Januari 2021",
          urlImage:
              "https://www.pinhome.id/kamus-istilah-properti/wp-content/uploads/2021/03/15921-lunas-1.jpg"),
      Products(
          kode: "A2",
          total: "24.000",
          tanggal: "5 Juli 2021",
          urlImage:
              "https://www.pinhome.id/kamus-istilah-properti/wp-content/uploads/2021/03/15921-lunas-1.jpg"),
    ];
  }
}

class ProductsCard extends StatelessWidget {
  final Products products;

  ProductsCard({this.products});
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Container(
                height: 300.0,
                width: 70.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(products.urlImage),
                    )),
              ),
              title: Text(products.kode),
              subtitle: Text(products.total),
              // subtitle: new Column(
              //   children: <Widget>[
              //     Expanded(child: Text(products.price)),
              //     Expanded(child: Text(products.description))
              //   ],
              // ),
              // contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            ),
            Column(
              children: <Widget>[
                Text(products.tanggal),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
