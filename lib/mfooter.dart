import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final index;
  final onBottomTap;

  const BottomBar({Key key, this.index: 0, this.onBottomTap}) : super(key: key);

  @override
  Widget build(BuildContext context) => new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.home), title: new Text("Home")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.settings), title: new Text("Settings")),
        ],
        currentIndex: index,
        onTap: onBottomTap,
      );
}
