import 'package:flutter/material.dart';

class ChatWindow  extends StatelessWidget {
  final contactName,contactId;
  var displayPicture;
  
  ChatWindow({this.contactName, this.contactId,this.displayPicture}){
    if (this.displayPicture == null)
      this.displayPicture = CircleAvatar(child:Text(this.contactName));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromRGBO(40, 47, 60, 1),),
    );
  }
}