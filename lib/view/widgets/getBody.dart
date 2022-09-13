import 'package:flutter/cupertino.dart';

Widget getBody() {
  List<Widget> pages = [
    Container(
      alignment: Alignment.center,
      child: Text("Home",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
    ),
    Container(
      alignment: Alignment.center,
      child: Text("Users",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
    ),
    Container(
      alignment: Alignment.center,
      child: Text("Messages",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
    ),
    Container(
      alignment: Alignment.center,
      child: Text("Settings",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
    ),
  ];
  var _currentIndex;
  return IndexedStack(
    index: _currentIndex,
        children: pages,
  );
}