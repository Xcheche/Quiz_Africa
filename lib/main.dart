import 'package:flutter/material.dart';
import 'color_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Africa Quiz',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: ColorPage(),
    );
  }
}
