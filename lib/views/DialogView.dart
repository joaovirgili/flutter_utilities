import 'package:flutter/material.dart';

class DialogView extends StatelessWidget {

  final AlertDialog dialog = new AlertDialog(
    title: new Text("My Dialog"),
    content: new Text("My Dialog text"),
    actions: <Widget>[
      new CloseButton(),
    ],

  );
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Container(
          child: new RaisedButton(
            child: new Text("Dialog"),
            onPressed: () => showDialog(context: context, child: dialog),
          ),
        ),
      ),
    );
  }
}


