import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/back_button.dart';
import '../../widgets/mycard.dart';

class PastOrders extends StatefulWidget {
  @override
  _PastOrdersState createState() => _PastOrdersState();
}

class _PastOrdersState extends State<PastOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: navBack(),
        title: const Text(
          "Past Orders",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      body: ListView(
        children: [
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

/*
Container(
margin: EdgeInsets.only(top: 20),
height:300,
width: 200,
child: Card(
color:Colors.white,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(15.0),
),
elevation: 10,
child: Column(
mainAxisSize: MainAxisSize.min,
children: const <Widget>[
ListTile(
leading: Icon(Icons.album, size: 60),
title:
Padding(
padding: EdgeInsets.only(top:15),
child: Text('Yash',
style: TextStyle(fontSize: 20.0,
color: Colors.black,fontWeight: FontWeight.bold)),
),
subtitle:
Text('date time', style: TextStyle(fontSize: 18.0)),
),
ListTile(
leading: Padding(
padding: EdgeInsets.only(bottom: 40),
child: Text("Order ID",
style: TextStyle(
color: Colors.black,
fontSize: 16,
fontWeight: FontWeight.normal)),
),
trailing: Padding(
padding: EdgeInsets.only(bottom: 40),
child: Text(
"452379531150477",
style: TextStyle(color: Colors.black,
fontWeight: FontWeight.normal,
fontSize: 16),
),
),
),
ListTile(
leading: Padding(
padding: EdgeInsets.only(bottom: 40),
child: Text("Items",
style: TextStyle(
color: Colors.black,
fontSize: 16,
fontWeight: FontWeight.normal)),
),
trailing: Padding(
padding: EdgeInsets.only(bottom: 40),
child: Text(
"45",
style: TextStyle(color: Colors.black,
fontWeight: FontWeight.normal,
fontSize: 16),
),
),
),
ListTile(
leading: Padding(
padding: EdgeInsets.only(bottom: 40),
child: Text("Order Amount",
style: TextStyle(
color: Colors.black,
fontSize: 16,
fontWeight: FontWeight.normal)),
),
trailing: Padding(
padding: EdgeInsets.only(bottom: 40),
child: Text(
"452379531150477",
style: TextStyle(color: Colors.black,
fontWeight: FontWeight.normal,
fontSize: 16),
),
),
),

ListTile(
leading: Padding(
padding: EdgeInsets.only(bottom: 40),
child: Text("Status",
style: TextStyle(
color: Colors.black,
fontSize: 16,
fontWeight: FontWeight.normal)),
),
trailing:Padding(
padding: EdgeInsets.only(bottom: 40),
child: Text("Approved",style:TextStyle(
color: Colors.cyan,fontSize: 16,fontWeight: FontWeight.bold
)),
)

)


]),
)),*/
