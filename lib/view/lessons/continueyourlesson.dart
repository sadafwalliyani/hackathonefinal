// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:percent_indicator/percent_indicator.dart';

// import '../progress.dart';
// import '../../services/variables/variable.dart';


// class ContinueLesson extends StatefulWidget {
//   const ContinueLesson({Key? key}) : super(key: key);

//   @override
//   State<ContinueLesson> createState() => _ContinueLessonState();
// }

// class _ContinueLessonState extends State<ContinueLesson> {
//   double? _height;
//   double? _width;

//   @override
//   void initState() {
//     late Timer timer;
//     timer = Timer.periodic(Duration(milliseconds: 1000), (_) {
//       setState(() {
//         percent += 10;
//         if (percent >= 100) {
//           timer.cancel();
//           percent = 0;
//         }
//       });
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           leading: Icon(
//             Icons.arrow_back,
//             color: Color(0xff697B7A),
//           ),
//           backgroundColor: Colors.white,
//           title: const Text(
//             "Continue your Lessons",
//             style: TextStyle(color: Colors.black),
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 10,
//                 ),
                
//                 // Progress(Color.fromRGBO(46, 196, 182, 1),
//                 //     "Basic UI/UX Designer ", "by Azamat baimatov"),
//                 // SizedBox(
//                 //   height: 15,
//                 // ),
//                 // Progress(Colors.blueAccent, "React JS For Beginner",
//                 //     "by Micah Richard"),
//                 // SizedBox(
//                 //   height: 15,
//                 // ),
//                 // Progress(Colors.orangeAccent, "User Experience Design ...",
//                 //     "by Horann Tajman"),
//                 // SizedBox(
//                 //   height: 15,
//                 // ),
//                 // Progress(Colors.redAccent, "Illustrator 2022 MasterClass",
//                 //     "by Cherrie Maria")
//               ],
//             ),
//           ),
//         ));
//   }
// }
import 'package:flutter/material.dart';
import 'package:hackfinal/models/model.dart';
import 'package:hackfinal/view/bottomnavigation/profilementor.dart';
import 'package:video_player/video_player.dart';

class DetailCourse extends StatefulWidget {
  DetailCourse({Key? key, this.data}) : super(key: key);
  Data? data;
  @override
  _DetailCourseState createState() => _DetailCourseState();
}

class _DetailCourseState extends State<DetailCourse> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.data!.video!)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.share_outlined, color: Colors.black)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.directions_boat_outlined,
                    color: Colors.black))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
                _controller.value.isInitialized
                    ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                    : Container(),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          _controller.value.isPlaying
                              ? _controller.pause()
                              : _controller.play();
                        });
                      },
                      child: Icon(
                        _controller.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Image.asset('assets/video.jpeg'),
            const Text(
              'About Course',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                widget.data!.description!,
                maxLines: 4,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 150,
                  height: 50,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.shopping_bag_outlined,
                        color: Color(0xff2EC4B6),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "Add to Cart",
                        style: TextStyle(color: Color(0xff2EC4B6)),
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileMentor()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff2EC4B6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  child: const Text(
                    "Buy Now \$145",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            )
          ]),
        ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
