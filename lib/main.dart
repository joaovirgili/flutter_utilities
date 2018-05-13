import 'package:flutter/material.dart';
import 'views/SnackBarView.dart';
import 'views/DialogView.dart';
import 'views/StepperView.dart';

void main() => runApp(new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: new HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(vsync: this, length: 3);
    
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Utils App"),
        bottom: new TabBar(
          tabs: <Widget>[
            new Tab(text: "Snackbar"),
            new Tab(text: "Dialog"),
            new Tab(text: "Stepper"),
          ],
          controller: tabController,
        ),
      ),
      body: new Builder(builder: (BuildContext context) {
        return new Container(
          child: TabBarView(
            children: <Widget>[
              SnackBarView(),
              DialogView(),
              StepperView(),
            ],
            controller: tabController,
          ),
        );
      }),
      drawer: new Drawer(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Center(
              child: new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "My Drawer",
                  style: new TextStyle(
                      fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            new Expanded(
              child: new Column(
                children: <Widget>[
                  createRow("Info 1"),
                  createRow("Info 2"),
                  createRow("Info 3"),
                  createRow("Info 4"),
                  createRow("Info 5"),
                  createRow("Info 6"),
                  createRow("Info 7"),
                  createRow("Info 8"),
                  createRow("Info 9"),
                  createRow("Info 10"),
                ],
              ),
            ),
            new MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: new Text("Close"),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: () {
          print("fab clicked");
        },
      ),
    );
  }
}

Row createRow(text) {
  return new Row(
      children: <Widget>[
        new Padding(
          padding: const EdgeInsets.all(5.0),
          child: new Text(
            text,
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
}
