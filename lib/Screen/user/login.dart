import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/logincard.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
                   Expanded(
                  child: Container(
                    color: Colors.white,
                  ),
                )

              ],
            ),
            Column(
              children: [
                  Expanded(child: Icon(Icons.phone_android)),
                LoginCard()
              ],
            )
          ],

        ));
  }
}

class customscrollview extends StatelessWidget {
  const customscrollview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        const SliverAppBar(
            centerTitle: true,
            title: Text(
              "Duneera",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blue,
            expandedHeight: 350.0,
            flexibleSpace: SafeArea(
                child: FlexibleSpaceBar(
                    /*background: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Text("dbebjnk")
              ),*/

                    ))),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 1,
                      width: MediaQuery.of(context).size.width / 1,
                      color: Colors.white,
                      child:
                          Column(mainAxisSize: MainAxisSize.min, children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          alignment: Alignment.center,
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin:
                              EdgeInsets.only(top: 20, left: 10, right: 10),
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text(
                            "Enter Mobile number or Login Name",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin:
                              EdgeInsets.only(top: 40, left: 10, right: 10),
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text(
                            "CONTINUE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),

                        Container(
                            margin: EdgeInsets.only(
                                top: 10, left: 15, right: 15),
                            child: const Expanded(
                              child: Text(
                                "By downloading and using the app,I Confirm my agreement to the terms of use and the Duneera.",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                                        child: const Divider(
                                          color: Colors.blue,
                                          thickness: 2,
                                          height: 36,
                                        )),
                                  ),
                                  const Text("New Driver?"),
                                  Expanded(
                                    child: Container(
                                        margin: const EdgeInsets.only(left: 30.0, right: 20.0),
                                        child: const Divider(
                                          thickness: 2,
                                          color: Colors.blue,
                                          height: 36,
                                        )),
                                  ),


                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              margin: EdgeInsets.only(top:40),
                              child: const Text(
                                "New to Fresh Market?Register with us",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                        Container(
                          alignment: Alignment.center,
                          margin:
                              EdgeInsets.only(top: 40, left: 10, right: 10),
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            "REGISTER",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ]),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
