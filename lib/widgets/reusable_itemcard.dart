import 'package:flutter/material.dart';

import 'mytile.dart';

class ItemCard extends StatelessWidget {
  final String name, quantity, nextQuantity, price;
  var image;
  ItemCard(
      {Key? key,
      required this.name,
      required this.quantity,
      required this.price,
      required this.image,
      required this.nextQuantity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
        child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 10,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(name,
                          style: const TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                    subtitle: Text(quantity, style: TextStyle(fontSize: 18.0)),
                  ),
                  mytile(
                    text1: "price",
                    text2: price,
                  ),
                  mytile(text1: "nextQuantity", text2: nextQuantity),
                  mytile(text1: "nextQuantity", text2: nextQuantity),
                ])));
  }
}
