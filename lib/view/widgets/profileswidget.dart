import 'package:flutter/material.dart';

Widget ProfileWidget(
  String textt,
  Icon iconss1,
) {
  return ListTile(
    leading: Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffF6FBFA)),
      child: iconss1,
      // color: Color(0xff2EC4B6),
    ),
    title: Text(
      "$textt",
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    ),
    trailing: Image.asset("assests/Vector.png"),
  );
}