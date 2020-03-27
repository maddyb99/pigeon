import 'package:flutter/material.dart';
import 'package:pigeon/UI/UI.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ChatWindow(contactName: "dhruv",contactId: 2,displayPicture: null,)
    );
  }

}
