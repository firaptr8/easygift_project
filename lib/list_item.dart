import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Hello World',
//       theme: ThemeData(
//         primarySwatch: Colors.lightBlue,
//       ),
//       // A widget which will be started on application startup
//       home: MyListItem(title: 'Easygift'),
//     );
//   }
// }

class MyListItem extends StatefulWidget {
  MyListItem({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyListItemState createState() => new _MyListItemState();
}

class _MyListItemState extends State<MyListItem> {
  final List<Products> prod = ProductList.getProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), centerTitle: true, backgroundColor: Color(0xff66cdaa)),
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
  final String name;
  final String price;
  final String description;
  final String urlImage;

  Products({this.name = "", this.price = "", this.description = "", this.urlImage = ""});
}

class ProductList {
  static List<Products> getProducts() {
    return [
      Products(name: "Panda Night Lamp", price: "59.000", description: "Lampu Tidur Karakter Panda", urlImage: "https://dekorrumah.net/wp-content/uploads/2017/03/lampu-tidur-unik-lucu.jpg"),
      Products(name: "We Bare Bears Coffee Mug", price: "159.000", description: "Cangkir Kopi Karakter Beruang", urlImage: "https://images.tokopedia.net/img/cache/700/product-1/2019/5/26/5380411/5380411_66144353-ada7-4744-9690-924fde65224b_1560_1560.jpg"),
      Products(name: "Strawberry Scented Candle", price: "7.00", description: "Lilin Aromaterapi Stroberi", urlImage: "https://ae01.alicdn.com/kf/H5c0bfd3c64ba4245a4692bf32093eba5W/Cute-Strawberry-Macaron-Lilin-Beraroma-Lilin-Minyak-Esensial-Aromaterapi-Lilin-Romantis-Santai-Dekorasi-Rumah-Lilin-Aroma.jpg"),
      Products(name: "Donut Bath Bomb", price: "49.000", description: "Sabun Bom Mandi Bentuk Donat", urlImage: "https://sp.apolloboxassets.com/vendor/product/2018-08-17-06/productImages/toJjiArray_12.jpg"),
      Products(name: "Lighter Gun", price: "193.000", description: "Korek Api Bentuk Pistol", urlImage: "https://ds393qgzrxwzn.cloudfront.net/resize/m720x480/cat1/img/images/0/d2m3gio6Tn.jpg"),
      Products(name: "Clucth Rotan", price: "79.000", description: "Dompet Kekinian Dari Rotan", urlImage: "https://ds393qgzrxwzn.cloudfront.net/resize/m320x450/cat1/img/images/0/AFCkIWSoAg.jpg"),
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
                title: Text(products.name),
                subtitle: Text(products.price),
                // subtitle: new Column(
                //   children: <Widget>[
                //     Expanded(child: Text(products.price)),
                //     Expanded(child: Text(products.description))
                //   ],
                // ),
                // contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                trailing: IconButton(
                  icon: Icon(Icons.shopping_cart),
                  color: Colors.grey,
                  onPressed: () {},
                )),
            Column(
              children: <Widget>[
                Text(products.description),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
