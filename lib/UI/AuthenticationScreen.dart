import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                color: Color.fromRGBO(8, 17, 20, 1), //go to color
                constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * 0.45,
                    maxHeight: MediaQuery.of(context).size.height * 0.45),
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            left: MediaQuery.of(context).size.width * 0.1,
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              elevation: 10,
              child: Container(
                // color: Colors.pink,
                constraints: BoxConstraints(
                    minWidth: MediaQuery.of(context).size.width * 0.8,
                    maxWidth: MediaQuery.of(context).size.width * 0.8,
                    minHeight: MediaQuery.of(context).size.height / 2,
                    maxHeight: MediaQuery.of(context).size.height / 2),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).size.height/80,),
                    // Text("SignIn",)
                    TextFormField()
                    
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
