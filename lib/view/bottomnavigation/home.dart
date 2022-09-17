import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackfinal/view/progress.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(children: [
                    Text(
                      "Hi Hafiz 👋",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 53, 59, 53),
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SafeArea(
                      child: Text(
                        "Let’s Find Your Course!",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 53, 59, 53),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 50),
                    Center(
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color.fromARGB(255, 231, 228, 228))),
                          height: 50,
                          width: 50,
                          child: Icon(Icons.backpack)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color.fromARGB(141, 218, 219, 214))),
                        height: 50,
                        width: 50,
                        child: Icon(Icons.notification_add),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                     width: 350,
                      height: 50,
                      child: TextField(
                        
                          decoration: InputDecoration(
                            
                              filled: true,
                              fillColor: Color.fromRGBO(240, 240, 240, 1),
                              hintText: "serach here",
                              hintStyle: TextStyle(color: Colors.grey),
                              prefixIcon: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(Icons.search)),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Icon(Icons.search_off_rounded),
                              ))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    containerr(Icons.movie, "Coding"),
                    containerr(Icons.design_services, "Design"),
                    containerr(Icons.speaker, "Marketting"),
                    containerr(Icons.business, "Business"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    containerr(Icons.person, "Lifestyle"),
                    containerr(Icons.music_note, "Music"),
                    containerr(Icons.book, "Academics"),
                    containerr(Icons.more, "More")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Continue Your Lessons",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 5, 5, 5),
                          fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      child: Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 165, 240, 155),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              // Container(
              //           height: 150,
              //        //   width: 500,
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(20),
              //               image: DecorationImage(
              //                   image: AssetImage("assests/img.PNG"),
              //                   fit: BoxFit.cover))),
               Progress(Color.fromRGBO(46, 196, 182, 1),
                    "Basic UI/UX Designer ", "by Azamat baimatov",context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommendation Course",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 5, 5, 5),
                          fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      child: Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 165, 240, 155),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2,),
                Image.asset("assests/second.PNG",
                // height: 300,
                width: 500,),
              ],
            )),
      ),
    );
  }
}

containerr(icon, text) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 223, 221, 221),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color.fromARGB(249, 249, 250, 248))),
        height: 70,
        width: 70,
        child: Center(
            child: Icon(
          icon,
          color: Colors.orange,
        )),
      ),
      Center(
          child: Text(
        "$text",
        style: TextStyle(color: Colors.grey),
      ))
    ],
  );
}
