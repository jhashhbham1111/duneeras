import 'package:flutter/material.dart';

import 'Screen/user/home.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}
