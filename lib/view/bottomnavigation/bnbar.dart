import 'package:flutter/material.dart';
import 'package:hackfinal/services/coursesVideos.dart';
import 'package:hackfinal/view/bottomnavigation/custom_animated_bottom_bar.dart';
import 'package:hackfinal/view/bottomnavigation/favorite.dart';
import 'package:hackfinal/view/bottomnavigation/home.dart';
import 'package:hackfinal/view/bottomnavigation/profilementor.dart';
import 'package:hackfinal/view/bottomnavigation/profiles.dart';

class bottomNavBar extends StatefulWidget {

  @override
  _bottomNavBarState createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  int _currentIndex = 0;

  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: getBody(),
        bottomNavigationBar: _buildBottomBar()
    );
  }

  Widget _buildBottomBar(){
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: Colors.black,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
          activeColor: Colors.green,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
          
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.play_arrow),
          title: Text('Play'),
          activeColor: Colors.purpleAccent,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.favorite_outline_outlined),
          title: Text(
            'Favorite',
          ),
          activeColor: Colors.pink,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.person),
          title: Text('Profile'),
          activeColor: Colors.blue,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }


  Widget getBody() {
    List<Widget> pages = [
      Container(
        alignment: Alignment.center,
        child: Home()
      ),
      Container(
        alignment: Alignment.center,
        child: PlayCourse(),
      ),
      Container(
        alignment: Alignment.center,
        child: favoriteLesson(),
      ),
      Container(
        alignment: Alignment.center,
        child: MyProfile(),
      ),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }


}