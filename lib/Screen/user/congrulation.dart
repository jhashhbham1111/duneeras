import 'dart:ui';

import 'package:flutter/material.dart';

import '../../widgets/back_button.dart';

class Congrulation extends StatefulWidget {
  const Congrulation({Key? key}) : super(key: key);

  @override
  _CongrulationState createState() => _CongrulationState();
}

class _CongrulationState extends State<Congrulation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: navBack(),
        title: const Text(
          "Congrulations",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 4,
          ),
          Container(
            child: const Text(
              "Congrulations",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            child: const Text(
              "Nitin!(store)",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.normal),
            ),
          ),

          /*const myLabel(label: "Congrulations"),
          const myLabel(label:"Nitin!(store)"),*/
          SizedBox(
            height: MediaQuery.of(context).size.height / 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            alignment: Alignment.center,
            child: RichText(
              text: const TextSpan(
                  text: 'Your shop is successfully registered on ',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                  /*defining default style is optional */
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Duneera.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue)),
                    TextSpan(
                        text: 'You can now accept online orders here',
                        style: TextStyle(color: Colors.black, fontSize: 16)),
                  ]),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 5),
          GestureDetector(
            onTap: () {},
            child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(
                  left: 15,
                  bottom: 10,
                  right: 15,
                ),
                height: MediaQuery.of(context).size.height / 20,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(50)),
                child: const Text(
                  "Continue",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                )),
          )
          /* myLabel(label: '',)*/
        ],
      ),
    );
  }
}

/*class myLabel extends StatelessWidget {
  final String label;
  const myLabel({
    Key? key,required this.label
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15,bottom: 30),
      height: MediaQuery.of(context).size.height/10,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30)
      ),
      child:Text(label,style:const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.normal,
         fontSize: 16),)
    );
  }
}*/
