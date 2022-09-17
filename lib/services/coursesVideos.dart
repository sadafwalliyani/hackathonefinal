import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hackfinal/models/model.dart';
import 'package:hackfinal/view/lessons/continueyourlesson.dart';
import 'package:http/http.dart' as http;

class PlayCourse extends StatefulWidget {
  const PlayCourse({Key? key}) : super(key: key);

  @override
  State<PlayCourse> createState() => _PlayCourseState();
}

class _PlayCourseState extends State<PlayCourse> {
  @override
  initState() {
    super.initState();
    getData();
  }

  List<Data> items = [];
  Future<void> getData() async {
    var url = Uri.parse(
        "https://phplaravel-704365-2879244.cloudwaysapps.com/api/jawan_pakistan/Testing");

    var response = await http.get(url);
   UserModel data = UserModel.fromJson(jsonDecode(response.body));
    setState(() {
      items = data.data!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: const Text(
            "Tool Box",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: 
        items.isNotEmpty
            ? ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  Data singleData = items[index];
                  return Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => DetailCourse(
                                      data: singleData,
                                    )));
                      },
                      leading: const Icon(Icons.play_arrow),
                      title: Text(singleData.title!),
                      subtitle: Text(singleData.description!),
                      trailing: const CircleAvatar(
                        radius: 20,
                        child: Icon(Icons.lock),
                        backgroundColor: Colors.orange,
                      ),
                    ),
                  );
                })
            : SizedBox());
  }
}
