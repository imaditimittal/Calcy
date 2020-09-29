import "package:flutter/material.dart";
import "home_page.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator App",
      theme: ThemeData(brightness: Brightness.light, primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}
