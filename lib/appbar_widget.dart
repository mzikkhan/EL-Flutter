import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    title: Text(
      "Home Page",
      style: TextStyle(color: Colors.white, fontSize: 20, letterSpacing: 1.2),
    ),
    centerTitle: true,
    backgroundColor: const Color(0xFF3D403E),
    elevation: 0,
  );
}
