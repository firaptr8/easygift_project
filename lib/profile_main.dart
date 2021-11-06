import 'package:flutter/material.dart';
import 'profile_page.dart';

class MyProfile extends StatefulWidget {
  MyProfile({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyProfileState createState() => new _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          backgroundColor: Color(0xff66cdaa),
          automaticallyImplyLeading: false),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 70.0,
                backgroundImage: NetworkImage(
                    "https://spesialis1.orthopaedi.fk.unair.ac.id/wp-content/uploads/2021/02/depositphotos_39258143-stock-illustration-businessman-avatar-profile-picture-300x300.jpg"),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 65.0,
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.person, size: 20.0),
                    title: Text('Full Name'),
                  ),
                ),
              ),
              SizedBox(
                height: 65.0,
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.email, size: 20.0),
                    title: Text('User@mail.com'),
                  ),
                ),
              ),
              SizedBox(
                height: 65.0,
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.lock, size: 20.0),
                    title: Text('Password'),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: 45,
                width: 170,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ProfilePage();
                    }));
                  },
                  style: ElevatedButton.styleFrom(primary: Color(0xff66cdaa)),
                  child: Center(
                    child: Text(
                      "Edit",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 60.0,
                child: Card(
                  child: ListTile(
                      leading: Icon(Icons.exit_to_app, size: 20.0),
                      title: Text('Logout'),
                      onTap: () {}),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
