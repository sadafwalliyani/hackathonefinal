import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackfinal/view/Tabbar/details.dart';
import 'package:hackfinal/view/Tabbar/lessons.dart';
import 'package:hackfinal/view/Tabbar/reviews.dart';

class CustomTabDemo extends StatefulWidget {
  const CustomTabDemo({Key? key}) : super(key: key);

  @override
  _CustomTabDemoState createState() => _CustomTabDemoState();
}

class _CustomTabDemoState extends State<CustomTabDemo>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 50,
              width: 380,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  5.0,
                ),
              ),
              child: TabBar(
                controller: _tabController,
                indicatorColor: Colors.white,
                indicatorWeight: 5,
                labelPadding: EdgeInsets.zero,
                labelColor: Colors.cyan,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    child: Container(
                      child: const Text('Details'),
                      alignment: Alignment.center,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          right: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: const Text('Lessons'),
                      alignment: Alignment.center,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          right: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: const Text('Reviews'),
                      alignment: Alignment.center,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          right: BorderSide(color: Color.fromARGB(255, 138, 136, 136)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // tab bar view
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  Center(
                    child:detailsScreen()
                  ),

                  // second tab bar view widget
                  Center(
                    child: lessonsScreen()
                  ),
                  Center(
                    child: reviewsScreen()
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
