import 'package:flutter/material.dart';

import '../../widgets/back_button.dart';
class Pending extends StatefulWidget {
  @override
  _PendingState createState() => _PendingState();
}

class _PendingState extends State<Pending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: navBack(),
        title: Text("Pending"),
      ),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height/3,),
          Container(
            alignment: Alignment.center,
            child: const Text("Your information is being verified",
              style: TextStyle(color:Colors.red,fontSize: 22,
            fontWeight: FontWeight.bold),),
          ),
          Container(child: const Text("more information please contact to admin",
          style: TextStyle(
              color:Colors.grey,
              fontWeight:FontWeight.normal,
              fontSize: 16 ),),
          ),
          Container(
            child: const Text("96252848324",style: TextStyle(
                color:Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.bold),),
          )
        ],
      ),

    );
  }
}
