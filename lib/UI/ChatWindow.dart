import 'package:flutter/material.dart';

class ChatWindow extends StatelessWidget {
  final contactName, contactId;
  var displayPicture;

  ChatWindow({this.contactName, this.contactId, this.displayPicture}) {
    if (this.displayPicture == null)
      this.displayPicture = CircleAvatar(child: Text(this.contactName));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 47, 60, 1),
      appBar: AppBar(
          centerTitle: true,
          title: Text(this.contactName),
          backgroundColor: Color.fromRGBO(8, 17, 20, 1)),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          //messages
          SingleChildScrollView(
            child: Column(),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.01,
            left: MediaQuery.of(context).size.width * 0.02,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  color: Colors.white,
                  child: Container(
                    color: Colors.transparent,
                    constraints: BoxConstraints(
                        minHeight: 0,
                        // maxHeight: MediaQuery.of(context).size.height * 0.055,
                        maxWidth: MediaQuery.of(context).size.width * 0.8,
                        minWidth: MediaQuery.of(context).size.width * 0.8),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 30.0, right: 30.0, top: 0,bottom: 0),
                      child: TextField(
                        style: TextStyle(fontSize: 17,color: Colors.black54),
                        minLines: 1,
                        maxLines: 10,
                        scrollPadding: EdgeInsets.all(10),
                        decoration: InputDecoration(
                          isDense: false,
                          contentPadding: EdgeInsets.all(0),
                          hintText: "Type a message",
                          hintStyle: TextStyle(fontSize: 17),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              color: Colors.transparent,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              color: Colors.transparent,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.height / 100),
                  child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    child: Transform.rotate(
                      angle: -.5233,
                      child: Icon(
                        Icons.send,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
