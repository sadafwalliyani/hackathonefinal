import 'package:flutter/material.dart';
import 'package:hackfinal/services/variables/variable.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

Widget Progress(Color color1, String text1, text2) {
  return Container(
      height: 155,
      width: 360,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: color1),
      child: SingleChildScrollView(
        child: Column(
          
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              Row(
                children: const [
                  Text(
                    "\t\t\t\t Ongoing .",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text("22/32", style: TextStyle(color: Colors.white)),
                ],
              ),
              ListTile(
                  
                    title: Text("$text1", style: TextStyle(color: Colors.white)),
                    subtitle: Text("$text2",
                        style:
                            TextStyle(color: Color.fromARGB(170, 255, 255, 255))),
                    trailing: CircularPercentIndicator(
                      radius: 55.0,
                      lineWidth: 20.0,
                      animation: true,
                      percent:percent / 100,
                      center: Text(
                        percent.toString() + "%",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      backgroundColor: Colors.white38,
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.white,
                    )),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff0145AA),
                        fixedSize: const Size(110, 25),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () {},
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
              ),
              
            ]),
      ));
}   