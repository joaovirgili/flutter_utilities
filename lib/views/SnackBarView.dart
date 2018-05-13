import 'package:flutter/material.dart';

class SnackBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Container(
          child: new RaisedButton(
            child: new Text("Snackbar"),
            onPressed: () => Scaffold.of(context).showSnackBar(new SnackBar(
              content: new Row(
                children: <Widget>[
                  new Expanded(child: new Text("You clicked me.")),
                  new IconButton(icon: new Icon(Icons.ac_unit), onPressed: () => print("Snakcbar button"),),
                ],
              ),
              duration: new Duration(seconds: 3),
            ))
          ),
        ),
      ),
    );
  }
}


