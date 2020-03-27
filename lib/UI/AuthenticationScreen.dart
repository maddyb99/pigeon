import 'package:flutter/material.dart';
import 'package:pigeon/UI/custom_elevation.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                // color: Color.fromRGBO(8, 17, 20, 1), //go to color
                color: Colors.white,
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height * 0.45,
                  maxHeight: MediaQuery.of(context).size.height * 0.45,
                ),
                child: Center(
                  child: Text(
                    'Pigeon',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: MediaQuery.of(context).size.height / 6,
                      fontFamily: 'aboutlove',
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            left: MediaQuery.of(context).size.width * 0.1,
            child: CustomElevation(
              child: Card(
                margin: EdgeInsets.all(0),
//              color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              elevation: 30,
              child: Container(
                // color: Colors.pink,
                constraints: BoxConstraints(
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  maxWidth: MediaQuery.of(context).size.width * 0.8,
                  minHeight: MediaQuery.of(context).size.height / 2,
                  maxHeight: MediaQuery.of(context).size.height * .6,
                ),
                elevation: 0,
                child: Container(
                  // color: Colors.pink,
                  constraints: BoxConstraints(
                    minWidth: MediaQuery.of(context).size.width * 0.8,
                    maxWidth: MediaQuery.of(context).size.width * 0.8,
                    minHeight: MediaQuery.of(context).size.height / 2,
                    maxHeight: MediaQuery.of(context).size.height * .6,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(
                            MediaQuery.of(context).size.height / 50,
                          ),
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: MediaQuery.of(context).size.height / 40,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 30,
                            left: 20,
                            right: 20,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.black,
                                size: 25,
                              ),
                              isDense: true,
                              labelText: ' username',
                              alignLabelWithHint: true,
                              labelStyle: TextStyle(
                                color: Colors.black38,
                              ),
                              hintText: 'ex:Taylor',
                              hintStyle: TextStyle(
                                color: Colors.black12,
                              ),
                              fillColor: Colors.black38,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(40),
                                ),
                                borderSide: BorderSide(
                                  width: 3,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(40),
                                ),
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              border: OutlineInputBorder(
                                // borderSide: BorderSide(
                                //     color: Colors.black, width: 20),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                              ),
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Cant be empty';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 20,
                            left: 20,
                            right: 20,
                          ),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.lock,
                                color: Colors.black,
                                size: 25,
                              ),
                              isDense: true,
                              labelText: 'password',
                              alignLabelWithHint: true,
                              labelStyle: TextStyle(color: Colors.black38),
                              hintText: ('Password'),
                              hintStyle: TextStyle(color: Colors.black12),
                              fillColor: Colors.black38,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(40),
                                ),
                                borderSide: BorderSide(
                                  width: 3,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(40),
                                ),
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              border: OutlineInputBorder(
                                // borderSide: BorderSide(
                                //     color: Colors.black, width: 20),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                              ),
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Cant be empty';
                              }
                              return null;
                            },
                          ),
                        ),
                        //++++SUBMIT BUTTON+++++//
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 20,
                            bottom: MediaQuery.of(context).size.height / 45,
                            left: MediaQuery.of(context).size.width * .2,
                            right: MediaQuery.of(context).size.width * .2,
                          ),
                          child: RaisedButton(
                            elevation: 0,
                            color: Color.fromRGBO(140, 205, 0, .8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    'SUBMIT',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                            splashColor: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                        Text(
                          'or',
                          style: TextStyle(color: Colors.black38),
                        ),
                        //+++++SIGN IN WITH GOOGLE+++++//
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 30,
                            bottom: MediaQuery.of(context).size.height / 60,
                            left: MediaQuery.of(context).size.width * .14,
                            right: MediaQuery.of(context).size.width * .14,
                          ),
                          child: RaisedButton(
                            elevation: 0,
                            color: Color.fromRGBO(8, 37, 50, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(
                                  image: AssetImage('assets/google-logo.png'),
                                  height: 30,
                                  width: 30,
                                ),
                                Padding(
                                  padding:  EdgeInsets.all(MediaQuery.of(context).size.width * .034),
                                  child: Text(
                                    'Sign in with Google',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                            splashColor: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                        //+++++++SIGN UP BUTTON+++++++//
                        Padding(
                          padding: EdgeInsets.symmetric(
                              // vertical: MediaQuery.of(context).size.height / 30,
                              horizontal:
                                  MediaQuery.of(context).size.width * .14),
                          child: RaisedButton(
                            elevation: 0,
                            color: Color.fromRGBO(8, 37, 50, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(
                                  color: Colors.white,
                                  image: AssetImage('assets/signup-logo2.png'),
                                  height: 30,
                                  width: 30,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * .034),
                                  child: Text(
                                    'New user? Sign Up.',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                            splashColor: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
