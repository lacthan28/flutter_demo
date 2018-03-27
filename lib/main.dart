import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'mfooter.dart';
import 'mdrawer.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: new MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _navigationIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) => new Scaffold(
        key: _scaffoldKey,
        appBar: new AppBar(
          title: new Text(widget.title),
          automaticallyImplyLeading: true,
          leading: new IconButton(
              icon: new Icon(Icons.menu),
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              }),
        ),
        drawer: new MyDrawer(),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                'Test',
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ),
        bottomNavigationBar: new BottomBar(
          index: _navigationIndex,
          onBottomTap: (int i) {
            setState(() {
              _navigationIndex = i;
            });
          },
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                child: new AlertDialog(
                  title: new Text("Test Dialog"),
                  content: new Text("csvkdvbsd"),
                  actions: <Widget>[
                    new IconButton(
                      icon: new Icon(Icons.check),
                      onPressed: () => Navigator.pop(context),
                      splashColor: Colors.amber,
                      color: Colors.amberAccent,
                    ),
                  ],
                ));
          },
          mini: true,
          child: new Icon(FontAwesomeIcons.angleUp),
        ),
      );
}
