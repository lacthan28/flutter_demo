import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Drawer(
        child: new Column(
          children: <Widget>[
            new DrawerHeader(
              child: new Container(
                child: new Icon(Icons.people),
                width: double.infinity,
                color: Colors.amber,
              ),
              padding: new EdgeInsets.all(0.0),
              margin: new EdgeInsets.all(0.0),
            ),
          ],
        ),
      );
}
