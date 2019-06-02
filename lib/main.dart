import 'dart:async';
import 'dart:html' as prefix0;

import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Dindr'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String title = "Dindr";
  String toFilterOn = "";

  @override
  Widget build(BuildContext context) {
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: _airDress,
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.playlist_play),
            tooltip: 'Air it',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.playlist_add),
            tooltip: 'Restitch it',
            onPressed: _restitchDress,
          ),
          IconButton(
            icon: Icon(Icons.playlist_add_check),
            tooltip: 'Repair it',
            onPressed: _repairDress,
          ),
        ],
      ),

      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (choose the "Toggle Debug Paint" action
          // from the Flutter Inspector in Android Studio, or the "Toggle Debug
          // Paint" command in Visual Studio Code) to see the wireframe for each
          // widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 250,
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Form(
                    onChanged: () async {
                      Completer c = new Completer();
                      new Timer(new Duration(seconds: 0), () {
                        c.complete();
                        setState(() {
                          print("setting state...");
                        });
                      });
                    },
                    child: TextFormField(
                      cursorColor: Colors.red,
                      decoration:
                          InputDecoration(hintText: 'Search for skill...'),
                      autovalidate: true,
                      validator: (event){
                        toFilterOn = event;
                      },
                    ),
                  ),
                ),
                returnElement()
              ],
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void didToFilterOnChange() {
    String intermediateToFilterOn = toFilterOn;
    while(intermediateToFilterOn == toFilterOn) {};
    return;
  }

  void _airDress() {
    print("Air dress");
  }

  void _restitchDress() {
    print("Restitch Dress");
  }

  void _repairDress() {
    print("Repair dress");
  }

  void bindValue(String val) {
    print("enter");
  }

  Widget returnElement() {
    var names = [
      "mike",
      "john",
      "robert",
      "william",
      "kyle",
      "stevenski",
      "lyal",
      "johnny"
    ];
    var skills = [
      "c++",
      "python",
      "manager",
      "woodcutter",
      "farmer",
      "farmer",
      "mechanical engineer",
      "c++"
    ];
    List<Widget> widgets = new List<Widget>();
    if(skills.contains(toFilterOn) || toFilterOn.isEmpty) {
      for (var i = 0; i < names.length; i++) {
        if(skills[i] != toFilterOn && toFilterOn.isNotEmpty) {
          skills[i] = null;
          names[i] = null;
          continue;
         }
        widgets.add(new Container(
            margin: const EdgeInsets.all(4),
            padding: const EdgeInsets.all(4),
            decoration: new BoxDecoration(
                border: new Border.all(color: Colors.tealAccent)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 0, top: 0, right: 2, left: 2),
                      child: Column(children: <Widget>[
                        Image.asset("jobs.jpg", width: 50, fit: BoxFit.cover)
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 0, top: 0, right: 2, left: 2),
                      child: Column(
                        children: <Widget>[
                          Text(names[i]),
                          Text(skills[i])
                        ]
                      ),
                    ),
                  ],
                ),
              ],
            )));
      }
    } else {
      print("returning image");
      return new Image(image: new AssetImage("loading.gif"));
    }
    return new Column(
        mainAxisAlignment: MainAxisAlignment.center, children: widgets);
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Go back"),
        ),
      ),
    );
  }
}