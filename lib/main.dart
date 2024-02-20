import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listivew_demo/DemoFile.dart';
import 'package:listivew_demo/ListViewDemo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "ListViewDemo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),useMaterial3: true),
      home: DemoFile(),
    );
  }

}