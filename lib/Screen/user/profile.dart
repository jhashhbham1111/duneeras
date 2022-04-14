import 'package:duneeras/widgets/back_button.dart';
import 'package:flutter/material.dart';

import 'package:dotted_border/dotted_border.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            leading: const navBack(),
            title: const Text(
              "Profile",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )),
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.blue,
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: const Icon(
                                Icons.camera_enhance,
                                size: 30,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: const Text(
                                "Roy",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: const Text(
                                "9162821968",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top:20),
                              width: 100,
                              // you wouldn't need this once you have a child
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                border: Border.all(
                                  width: 25.0,
                                  color: Colors.blue,
                                  style: BorderStyle.none,
                                ),
                                shape: BoxShape.rectangle,
                              ),
                              child:const Text("EDIT",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),)
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.white,
                      ),
    Container(
    margin: const EdgeInsets.only(left: 15,right: 15,top: 5,),
    height: 50,
    color: Colors.white,
    child: TextFormField(
    decoration: InputDecoration(
    contentPadding: EdgeInsets.only(left: 20,right: 20),
    fillColor: Colors.grey,
    filled: true,
    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(width: 0.0,color: Colors.white)
    ),
    errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(width: 0.0,color:  Colors.white)
    ),
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(width: 0.0,color:  Colors.white)
    ),

    hintText: "My Order",
    hintStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color:Colors.grey.shade500)
    ),
    ),

    ),
                    ],

                  ),

                )
              ],
            ),
          ],
        ));
  }
  }
