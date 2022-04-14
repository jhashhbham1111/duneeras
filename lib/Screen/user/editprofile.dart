import 'package:duneeras/widgets/back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class EditProfile extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<EditProfile> {
  var _controller = TextEditingController();
  var panImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: navBack(),
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                left: 130,
                top: 120,
                right: 130,
              ),
              height: MediaQuery.of(context).size.height / 20,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: const Text(
                "Select Pic",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 16),
              )),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: const Text(
              "User Name",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              width: 180,
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Enter User Name",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyan),
                  ),
                ),
                onChanged: (value) {
                  var number = value.toString();
                },
              )),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: const Text(
              "Mobile Number",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              width: 180,
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Enter Your Mobile Number",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyan),
                  ),
                ),
                onChanged: (value) {
                  var number = value.toString();
                },
              )),
          ListTile(leading: Text("Driving Licence"),subtitle: Visibility(visible: panImage==null,child: Text("filename.jpg"),),
            trailing: MaterialButton(child: Text("Select a Pic",
            style: TextStyle(color: Colors.blue,),), onPressed: () {  },),),
          ListTile(leading: Text("Pan Card"),subtitle: Visibility(visible: panImage==null,child: Text("filename.jpg"),),
            trailing: MaterialButton(child: Text("Select a Pic",style: TextStyle(color:Colors.blue),), onPressed: () {  },),),
          ListTile(leading: Text("Insurance Certificate"),subtitle: Visibility(visible: panImage==null,child: Text("filename.jpg"),),
            trailing: MaterialButton(child: Text("Select a Pic",style: TextStyle(color:Colors.blue)), onPressed: () {  },),),
         /* Container(
            width: double.infinity,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                   "Pan Card",), Visibility(
                    visible: panImage != null,
                    child: Text("filename.jpg"),
                ),
                MaterialButton(
                    onPressed: () {
                      //open image picker
                    },
                    child: Text(
                      "Select pic",
                    )),
              ],
            ),
          ),*/
          Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 40),
              width: 180,
              child: TextFormField(
                maxLines: 4,
                controller: _controller,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Driving Licence",
                  suffixIcon: Icon(Icons.send, size: 20, color: Colors.red),
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyan),
                  ),
                ),
                onChanged: (value) {
                  var number = value.toString();
                },
              )),
          Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 40),
              width: 180,
              child: TextFormField(
                maxLines: 4,
                controller: _controller,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Pan Card",
                  suffixIcon: Icon(Icons.send, size: 20, color: Colors.red),
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyan),
                  ),
                ),
                onChanged: (value) {
                  var number = value.toString();
                },
              )),
          Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 40),
              width: 180,
              child: TextFormField(
                maxLines: 4,
                controller: _controller,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Insurance Certificate",
                  suffixIcon: Icon(Icons.send, size: 20, color: Colors.red),
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyan),
                  ),
                ),
                onChanged: (value) {
                  var number = value.toString();
                },
              )),
          SizedBox(height: MediaQuery.of(context).size.height / 5),
          Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                left: 25,
                bottom: 10,
                right: 25,
              ),
              height: MediaQuery.of(context).size.height / 15,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(50)),
              child: const Text(
                "Save",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 20),
              ))
        ],
      ),
    );
  }
}
