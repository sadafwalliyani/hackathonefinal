import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackfinal/view/bottomnavigation/bnbar.dart';
import 'package:hackfinal/view/bottomnavigation/home.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailcon = TextEditingController();
  TextEditingController passwordcon = TextEditingController();

  signIntoApp() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailcon.text,
        password: passwordcon.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('no user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('wrong password provided for that user');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(top:30,left: 8,right: 8),
                child: Column(children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 390,
                    child: Text(
                      "Selamat Datang!",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 44,
                          color: Color(0XFF004A61),
                          fontWeight: FontWeight.w700),
                      maxLines: 2,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Masukan NISN dan password untuk memulai belajar sekarang",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0XFF004A61),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 370,
                    child: Text(
                      "Lupa password",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0XFF004A61),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: 390,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextField(
                      controller: emailcon,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          hintStyle: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 18,
                            //fontWeight: FontWeight.w700,
                            wordSpacing: 0.3,
                          ),
                          hintText: 'Nomor NISM',
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color(0XFF004A61),
                            //   color: Color(0xffFE2550),
                          ),
                          fillColor: Colors.white70),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 370,
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0XFF004A61),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 390,
                    child: TextField(
                      controller: passwordcon,
                      obscureText: true,
                      /* ... */
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          hintStyle: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 18,
                            //fontWeight: FontWeight.w700,
                            wordSpacing: 0.3,
                          ),
                          hintText: 'Masukkan Password',
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color(0XFF004A61),
                          ),
                          fillColor: Colors.white70),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 370,
                    child: Text(
                      "Lupa password",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0XFF004A61),
                      ),
                      textAlign: TextAlign.right,
                    ),
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
                          MaterialPageRoute(
                              builder: (context) => bottomNavBar()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0XFF004A61),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: Text(
                        "MULAI BELAJAR",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ]),
              )),
    );
  }
}
