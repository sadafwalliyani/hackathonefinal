import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


import '../services/get_user.dart';

class HomeModel extends StatefulWidget {
  const HomeModel({Key? key}) : super(key: key);

  @override
  State<HomeModel> createState() => _HomeModelState();
}

class _HomeModelState extends State<HomeModel> {
  List<String> getUsername = [];
  TextEditingController names = TextEditingController();
  addValue() {
    setState(() {
      getUsername.add(names.text);
      names.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getUser(),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return
                      ListTile(
                    title: Text(snapshot.data[index].name),
                  );
                },
              );
            }
          }),
    );
  }
}
