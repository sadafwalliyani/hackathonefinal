import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackfinal/view/lessons/videoListView.dart';

class detailsScreen extends StatefulWidget {
  const detailsScreen({super.key});

  @override
  State<detailsScreen> createState() => _detailsScreenState();
}

class _detailsScreenState extends State<detailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  body:Column(
      //   children: [
      //     SizedBox(height: 10,),
      //     Container(
      //         width: 370,
      //         child: Text('About Course',
      // textAlign: TextAlign.left,),
      //       ),
      //       SizedBox(height: 5,),
          
      //       Container(
      //         width: 370,
      //         child: Text('This course is aimed at people new to design, new to User Experience design. Even if you’re not totally sure what UX really means, don’t worry. We’ll start right at the beginning and work our way through step by step.',
      //         maxLines: 4,
      //         textAlign: TextAlign.justify,),
      //       ),
      //       SizedBox(height: 5,),
      //       Padding(
      //         padding: const EdgeInsets.only(left:5,right: 8),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
        
      //        ElevatedButton(
      //                   onPressed: () {
      //                     Navigator.push(
      //                       context,
      //                       MaterialPageRoute(builder: (context) => videoListView()),
      //                     );
      //                   },
      //                   style: ElevatedButton.styleFrom(
      //                       backgroundColor:Color.fromARGB(255, 191, 210, 208),
      //                       shape: RoundedRectangleBorder(
      //                         borderRadius: BorderRadius.circular(5),
      //                       )),
      //                   child: Text(
      //                     "Add to Cart",
      //                     style: TextStyle(
      //                         fontSize: 20,
      //                         color: Color.fromRGBO(46, 196, 182, 1),
      //                         fontWeight: FontWeight.w400),
      //                   ),
      //                 ),
        
        
        
      //         SizedBox(height: 14,),
      //         ElevatedButton(
      //                   onPressed: () {
      //                     Navigator.push(
      //                       context,
      //                       MaterialPageRoute(builder: (context) => videoListView()),
      //                     );
      //                   },
      //                   style: ElevatedButton.styleFrom(
      //                       backgroundColor:Color.fromRGBO(46, 196, 182, 1),
      //                       shape: RoundedRectangleBorder(
      //                         borderRadius: BorderRadius.circular(5),
      //                       )),
      //                   child: Text(
      //                     "Buy Now \$145",
      //                     style: TextStyle(
      //                         fontSize: 20,
      //                         color: Colors.white,
      //                         fontWeight: FontWeight.w400),
      //                   ),
      //                 ),   ],
      //         ),
      //       ),
      //   ],
      //  )
    );
  }
}