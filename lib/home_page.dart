import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: GridView.count(crossAxisCount: 2, children: <Widget>[
          MyMenu(title: "Pria", icon: Icons.male, warna: Colors.red),
          MyMenu(title: "Wanita", icon: Icons.female, warna: Colors.blue),
          MyMenu(
              title: "Anak - anak",
              icon: Icons.child_care,
              warna: Colors.orange),
          MyMenu(
              title: "Remaja", icon: Icons.accessibility, warna: Colors.green),
          MyMenu(
              title: "Dewasa",
              icon: Icons.accessibility_sharp,
              warna: Colors.blueGrey),
          MyMenu(title: "Lain-lain", icon: Icons.info, warna: Colors.grey),
        ]),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu({this.title, this.icon, this.warna});

  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(4.0),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue,
        child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Icon(
              icon,
              size: 100,
              color: warna,
            ),
            Text(
              title,
              style: new TextStyle(fontSize: 15),
            )
          ]),
        ),
      ),
    );
  }
}
