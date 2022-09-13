import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Listvieww extends StatelessWidget {
  const Listvieww({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
            
              child: ListTile(onTap: (){},
              leading: Icon(Icons.play_arrow),   
              title: Text("Title bar"),
              subtitle: Text("1 Menit 10 Detik"),
              trailing: CircleAvatar(radius: 20,child: Icon(Icons.lock),backgroundColor: Colors.orange,),         
                
              ),
            );
          }),
    );
  }
}