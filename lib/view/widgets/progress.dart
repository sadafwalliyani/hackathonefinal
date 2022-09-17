import 'package:flutter/material.dart';
import 'package:hackfinal/services/variables/variable.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

Widget Progress(
    Color color1, String text1, text2, BuildContext context, ) {
  return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: color1),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: ListTile(
                    title:
                        Text("$text1", style: TextStyle(color: Colors.white)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("$text2",
                            style: TextStyle(
                                color: Color.fromARGB(170, 255, 255, 255))),
                        SizedBox(height: 12),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xff0145AA),
                                fixedSize: const Size(110, 25),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (_) => PlayCourse()));
                            },
                            child: const Text(
                              "Continue",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: CircularPercentIndicator(
                    radius: 55.0,
                    lineWidth: 20.0,
                    animation: true,
                    percent:percent/100,
                    center: Text(
                      percent.toString()+'%',
                   //   "$percent%",
                      style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    backgroundColor: Colors.white38,
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.white,
                  ),
                ),
              ],
            )
          ]));
}



