import 'package:flutter/material.dart';
class LoginCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       margin:EdgeInsets.only(left: 20,right: 20) ,
      alignment: Alignment.center,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 10,
        // ignore: avoid_unnecessary_containers
        child:  Container(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/14,),
              Container(
                 margin: EdgeInsets.only(bottom: 20),
                alignment: Alignment.center,
                child: const Text(
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
                      top: 10, left: 20, ),
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
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
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
                EdgeInsets.only(bottom: 10, left: 10, right: 10),
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
              )
            ],
          ),
        ),



      ),
    );
  }
}
