import 'package:flutter/material.dart';
import 'list_item.dart';
import 'home_page.dart';
import 'profile_main.dart';
import 'cart_page.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Hello World',
//       theme: ThemeData(
//         primaryColor: Color(0xff66cdaa),
//       ),
//       home: MyBottomNavBar(title: 'Easygift'),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

class MyBottomNavBar extends StatefulWidget {
  MyBottomNavBar({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyBottomNavBarState createState() => new _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    MyHomePage(title: 'Easygift'),
    MyListItem(title: 'Easygift'),
    CartPage(title: 'Shopping Cart'),
    MyProfile(title: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        //   centerTitle: true,
        // ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                  backgroundColor: Color(0xff66cdaa)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list_alt),
                  label: "List",
                  backgroundColor: Color(0xff66cdaa)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  label: "Cart",
                  backgroundColor: Color(0xff66cdaa)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Profile",
                  backgroundColor: Color(0xff66cdaa)),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            }));
  }
}
