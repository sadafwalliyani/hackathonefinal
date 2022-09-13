import 'dart:async';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../progress.dart';
import '../../services/variables/variable.dart';


class ContinueLesson extends StatefulWidget {
  const ContinueLesson({Key? key}) : super(key: key);

  @override
  State<ContinueLesson> createState() => _ContinueLessonState();
}

class _ContinueLessonState extends State<ContinueLesson> {
  double? _height;
  double? _width;

  @override
  void initState() {
    late Timer timer;
    timer = Timer.periodic(Duration(milliseconds: 1000), (_) {
      setState(() {
        percent += 10;
        if (percent >= 100) {
          timer.cancel();
          percent = 0;
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Color(0xff697B7A),
          ),
          backgroundColor: Colors.white,
          title: const Text(
            "Continue your Lessons",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Progress(Color.fromRGBO(46, 196, 182, 1),
                    "Basic UI/UX Designer ", "by Azamat baimatov"),
                SizedBox(
                  height: 15,
                ),
                Progress(Colors.blueAccent, "React JS For Beginner",
                    "by Micah Richard"),
                SizedBox(
                  height: 15,
                ),
                Progress(Colors.orangeAccent, "User Experience Design ...",
                    "by Horann Tajman"),
                SizedBox(
                  height: 15,
                ),
                Progress(Colors.redAccent, "Illustrator 2022 MasterClass",
                    "by Cherrie Maria")
              ],
            ),
          ),
        ));
  }
}