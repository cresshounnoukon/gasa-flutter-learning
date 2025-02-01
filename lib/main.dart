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
      home: Home(),

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