import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackfinal/view/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 11, 26, 13),
                    image: DecorationImage(
                        image: AssetImage("assests/splash.PNG"),
                        fit: BoxFit.cover)),
                height: 500,
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Perangkat Lunak Pengolah Gambar Vektor",
                style: TextStyle(
                    fontSize: 26,
                    color: Color(0XFF004A61),
                    fontWeight: FontWeight.w700),
                maxLines: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Jelajahi AiLearn untuk menambah kemampuanmu dalam mengoperasikan Adobe Illustrator",
                maxLines: 2,
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0XFF004A61),
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 48,
                width: 390,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFF004A61),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  child: Text(
                    "MASUK",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
