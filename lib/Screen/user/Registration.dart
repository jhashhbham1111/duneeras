import 'package:duneeras/widgets/back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/resuable_card.dart';

class Registration extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: navBack(),
          title: const Text(
            "Registration",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
        body: ListView(children: [
          ResuableCard(
            title: "Driving License",
            status: "aprooved",
          ),
          ResuableCard(title: "Pan Card", status: "approved"),
          ResuableCard(title: "PassPort Size Photo", status: "approved"),
          ResuableCard(title: "Insurance certificate", status: "approved"),
        ]));
  }
}
