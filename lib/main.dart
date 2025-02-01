import 'package:calavigasa2025/buttons/button_gasa.dart';
import 'package:calavigasa2025/exemple/exmple.dart';
import 'package:calavigasa2025/navigation/FirstScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  print('hello');
runApp (MyApp());

}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Exmple(),

    );


  }

}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text(" MyApp"),
        actions: [
          Icon(Icons.more_vert)

        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.black,
          ),
          Image(
            image: AssetImage('assets/images/avatar.png'),
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          Image(
            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYz7zOuTVMoUGCBeABMZnyf0bmn7oY3fxz1A&s'),
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.orange,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.red,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.red,
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.black,
                  ),

                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.orange,
                  ),
                ],
              ),

              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.orange,
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print ('Bonjour');
        },
        child: Icon(Icons.add),


      ),
    );
  }

}