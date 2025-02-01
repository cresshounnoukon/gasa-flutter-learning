import 'package:flutter/material.dart';

class Exmple extends StatefulWidget {
  const Exmple({super.key});

  @override
  State<Exmple> createState() => _ExmpleState();
}

class _ExmpleState extends State<Exmple> {

    String name="Franck";
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: Text("exemple $name"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Le text $name"),
            TextButton(onPressed: (){

              name="Joanita";
              print("Nom: $name");
              setState(() {

              });

            }, child: Text("appuer"))

          ],
        ),
      ),
    );
  }
}
