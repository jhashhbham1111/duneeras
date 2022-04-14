import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Screen/user/pastorders.dart';
import 'mytile.dart';
class mycard extends StatelessWidget {
  final String name,orderId,items,amount,status;
  final DateTime date;
  const mycard({
    required this.amount,
    required this.date,
    required this.items,
    required this.name,
    required this.orderId,
    required this.status,
    Key? key,
  }) : super(key: key);

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
              children:  <Widget>[
                ListTile(
                  leading: Icon(Icons.album, size: 60),
                  title: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(name,
                        style: const TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                  subtitle:
                  Text(date.toString(), style: TextStyle(fontSize: 18.0)),
                ),
                mytile(text1: "Order ID",text2: orderId,),
                mytile(text1: "Items",text2: items,),
                mytile(text1: "Order Amount",text2: "Rs. $amount",),
               status != 'Delivered'? mytile(text1: "Status",text2: status,):Container(
                 decoration: BoxDecoration(
                     color: Colors.grey[50],
                     borderRadius: BorderRadius.vertical(bottom:Radius.circular(15))
                 ),
                 child: Row(
                   mainAxisAlignment:MainAxisAlignment.end,
                   children: const [
                     Text("status",style: TextStyle(
                       color: Colors.grey,fontSize: 18,fontWeight:FontWeight.normal
                     ),),
                     Spacer(),
                     Padding(
                       padding: EdgeInsets.all(8.0),
                       child: Text("Delivered",style: TextStyle(color: Color(0xFFEF5350),
                           fontWeight: FontWeight.normal,fontSize: 18)
                         ,),
                     )
                   ],
                 ),
               ),
                SizedBox(
                  height: 10,
                ),
               Visibility(
                 visible: status != "Delivered",
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: BorderRadius.vertical(bottom:Radius.circular(15))
                    ),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.end,
                      children: const [
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Cancel Orders",style: TextStyle(color: Color(0xFFEF5350),
                              fontWeight: FontWeight.normal,fontSize: 18)
                            ,),
                        )
                      ],
                    ),
                  ),
                )

              ]),
        ));
  }
}