import 'package:flutter/material.dart';
import 'unpaid_page.dart';

class DetailItem extends StatefulWidget {
  @override
  _DetailItemState createState() => _DetailItemState();
}

class _DetailItemState extends State<DetailItem>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(milliseconds: 375), vsync: this);
    _animation = Tween(begin: 150.0, end: 260).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
        reverseCurve: Curves.easeOut));

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("DETAIL PRODUCT"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          color: Colors.grey[200],
          child: Center(
            child: MouseRegion(
              onEnter: (value) {
                setState(() {
                  _controller.forward();
                });
              },
              onExit: (value) {
                setState(() {
                  _controller.reverse();
                });
              },
              child: Container(
                height: _animation.value,
                width: 250.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 10.0,
                      ),
                      height: 130.0,
                      width: 130.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://dekorrumah.net/wp-content/uploads/2017/03/lampu-tidur-unik-lucu.jpg"),
                        ),
                      ),
                    ),
                    Flexible(
                      child: AnimatedOpacity(
                        opacity: _animation.value == 260.0 ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 200),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Flexible(
                                child: Text(
                                  'Lampu Tidur Karakter Panda',
                                  style: TextStyle(fontSize: 10.0),
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: Text('\$59'),
                                          ),
                                          Flexible(
                                            child: Row(
                                              children: [
                                                starIcon(Colors.yellow[700]),
                                                starIcon(Colors.yellow[700]),
                                                starIcon(Colors.yellow[700]),
                                                starIcon(Colors.yellow[700]),
                                                starIcon(Colors.grey[200]),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Flexible(
                                        child: Container(
                                          height: 30.0,
                                          width: 30.0,
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Material(
                                            color: Colors.grey[200],
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: InkWell(
                                              onTap: () {},
                                              child: Center(
                                                child: Icon(
                                                  Icons.bookmark,
                                                  size: 15.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 10.0),
                                  width: 130.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(12.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blue[200],
                                        offset: Offset(0.0, 10.0),
                                        spreadRadius: -5.0,
                                        blurRadius: 10.0,
                                      ),
                                    ],
                                  ),
                                  child: Material(
                                    color: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return UnpaidPage();
                                        }));
                                      },
                                      child: Center(
                                        child: Text(
                                          'Check Out',
                                          style: TextStyle(
                                              fontSize: 8.0,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Icon starIcon(Color color) {
    return Icon(
      Icons.star,
      size: 10.0,
      color: color,
    );
  }
}
