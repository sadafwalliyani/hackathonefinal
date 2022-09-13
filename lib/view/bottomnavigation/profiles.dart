import 'package:flutter/material.dart';
import 'package:hackfinal/view/widgets/profileswidget.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 255,
                decoration: const BoxDecoration(
                    color: Color(0xff2EC4B6),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    )),
                child: Column(children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "My Profile",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  
                  Container(
                    width: 100,
                    height: 130,
                    margin: const EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          "assests/profiles2.PNG",
                        ),
                        scale: 1,
                        fit: BoxFit.contain,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  const Text("Justin Hafizdzaki",
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                  const Text(
                    "hafizdzaki@gmail.com",
                    style: TextStyle(color: Color(0xffFFFFFF), fontSize: 12),
                  )
                ]),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "General",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ProfileWidget(
                "Personal Data",
                const Icon(
                  Icons.person_outline,
                  color: Color(0xff2EC4B6),
                )),
            ProfileWidget("Payments",
                const Icon(Icons.payment_outlined, color: Color(0xff2EC4B6))),
            ProfileWidget("Reviews",
                const Icon(Icons.reviews_outlined, color: Color(0xff2EC4B6))),
            ProfileWidget(
                "Certificate",
                const Icon(Icons.cast_for_education_outlined,
                    color: Color(0xff2EC4B6))),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child:
                  Text("Others", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            ProfileWidget("Setting",
                const Icon(Icons.settings, color: Color(0xff2EC4B6),
                ))
          ],
        ),
      ),
    ));
  }
}
