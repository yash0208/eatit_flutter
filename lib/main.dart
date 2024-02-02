
import 'package:eatit/Home.dart';
import 'package:eatit/Login.dart';
import 'package:eatit/colors.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
-
    routes: {
      '/': (context)=>Home(),
      '/login': (context)=>Login(),
    },
  ));
}
