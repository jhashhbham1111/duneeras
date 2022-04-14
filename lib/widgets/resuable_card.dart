import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  final String title, status;
  var image;
  ResuableCard(
      {Key? key, required this.title, required this.status, this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.grey[200],
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: ListTile(
        leading: image != null ? Image.file(image) : Icon(Icons.person),
        title: Text(title),
        subtitle: Text("Status: $status"),
        trailing: Container(
          margin: EdgeInsets.only(top: 10),
          child: MaterialButton(
              onPressed: () {},
              child: Text("Upload Documents",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal))),
        ),
      ),
    );
  }
}
