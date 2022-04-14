import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/homecard.dart';
import '../../widgets/mycard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

const double width = 200.0;
const double height = 10.0;
const double loginAlign = -1;
const double signInAlign = 1;
const Color selectedColor = Colors.white;
const Color normalColor = Colors.black54;

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Active Order',
        style: TextStyle(
            fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white)),
    Text('Past Order',
        style: TextStyle(
            fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white)),
    Text('Profile',
        style: TextStyle(
            fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white)),
  ];
  late double xAlign;
  late Color loginColor;
  late Color signInColor;
  @override
  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  void initState() {
    super.initState();
    xAlign = loginAlign;
    loginColor = selectedColor;
    signInColor = normalColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Column(
          children: [
            Row(
              children: [
                Container(
                  child: Icon(
                    Icons.search,
                    size: 20,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.more_vert,
                    size: 20,
                  ),
                ),
                Container(
                  child: const Text("DUNEERA",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  child: const Icon(
                    Icons.search,
                    size: 20,
                  ),
                ),
                Container(
                  child: const Icon(
                    Icons.more_vert,
                    size: 20,
                  ),
                ),
                Container(
                  child: const Text("Gandhi Nagar-4401",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                )
              ],
            ),
          ],
        ),
        actions: [
          Container(
              margin: EdgeInsets.all(12),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          xAlign = loginAlign;
                          loginColor = selectedColor;
                          signInColor = normalColor;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.indigoAccent.shade700,
                          borderRadius: BorderRadius.all(
                            Radius.circular(100.0),
                          ),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                        // alignment: Alignment.center,
                        child: Text(
                          "ON",
                          style: TextStyle(
                              color: loginColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      )),
                  VerticalDivider(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        xAlign = signInAlign;
                        signInColor = selectedColor;
                        loginColor = normalColor;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(100.0),
                        ),
                      ),
                      // alignment: Alignment.center,
                      child: const Text(
                        'OFF',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
      body: ListView(
        children: [
          HomeCard(),
          mycard(
            name: 'Harpreet',
            date: DateTime.now(),
            amount: "123455",
            items: "7",
            orderId: "12345",
            status: 'new',
          ),
          mycard(
            name: 'Yash',
            date: DateTime.now(),
            amount: "123455",
            items: "7",
            orderId: "12345",
            status: "Delivered",
          ),
        ],
      ),
    );
  }
}
