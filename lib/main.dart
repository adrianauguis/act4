
import 'package:flutter/material.dart';

import 'page_one.dart';
import 'page_two.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue
    ),
    initialRoute: '/',
    routes: {
      '/':(context) => PageOne(),
      '/second': (context) => PageTwo()
    },
  ));
}

