import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FormPayment extends StatefulWidget {
  FormPayment({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _FormPaymentState createState() => new _FormPaymentState();
}

class _FormPaymentState extends State<FormPayment> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        // key: _scaffoldKey,
        appBar: new AppBar(
          title: new Text("PAYMENT"),
        ),
        body: new Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: new Form(
              child: new ListView(
            children: <Widget>[
              new SizedBox(
                height: 20.0,
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  border: const UnderlineInputBorder(),
                  filled: true,
                  icon: const Icon(
                    Icons.person,
                    size: 40.0,
                  ),
                  hintText: 'What name is written on card?',
                  labelText: 'Card Name',
                ),
              ),
              new SizedBox(
                height: 30.0,
              ),
              new TextFormField(
                decoration: new InputDecoration(
                  border: const UnderlineInputBorder(),
                  filled: true,
                  icon: const Icon(
                    Icons.calendar_today,
                    size: 40.0,
                  ),
                  hintText: 'What number is written on card?',
                  labelText: 'Number',
                ),
              ),
              new SizedBox(
                height: 30.0,
              ),
              new TextFormField(
                decoration: new InputDecoration(
                  border: const UnderlineInputBorder(),
                  filled: true,
                  icon: const Icon(
                    Icons.calendar_view_day,
                    size: 40.0,
                  ),
                  hintText: 'Number behind the card',
                  labelText: 'CVV',
                ),
              ),
              new SizedBox(
                height: 30.0,
              ),
              new TextFormField(
                decoration: new InputDecoration(
                  border: const UnderlineInputBorder(),
                  filled: true,
                  icon: const Icon(
                    Icons.calendar_today_outlined,
                    size: 40.0,
                  ),
                  hintText: 'MM/YY',
                  labelText: 'Expiry Date',
                ),
              ),
              new SizedBox(
                height: 50.0,
              ),
              new Container(
                height: 45,
                width: 170,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  child: Center(
                    child: Text(
                      "Pay",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
        ));
  }
}
