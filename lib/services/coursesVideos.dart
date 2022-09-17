import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hackfinal/models/model.dart';
import 'package:hackfinal/view/bottomnavigation/videoScreen.dart';
import 'package:http/http.dart' as http;

class coursesVideos extends StatefulWidget {
  const coursesVideos({Key? key}) : super(key: key);

  @override
  State<coursesVideos> createState() => _coursesVideosState();
}

class _coursesVideosState extends State<coursesVideos> {
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
                                builder: (_) => VideoScreenApi(
                                      data: singleData,
                                    )));
                      },
                      leading: const Icon(Icons.play_arrow),
                      title: Text(singleData.title!),                      
                      subtitle: Text(singleData.description!,
                      maxLines: 10,
                      style:TextStyle(fontSize: 10,
                      ),
                      textAlign: TextAlign.justify,),
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
