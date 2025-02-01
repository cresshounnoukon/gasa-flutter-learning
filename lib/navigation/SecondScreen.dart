// Deuxième écran
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String name;

  SecondScreen({required this.name});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Deuxième écran $name ' ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
           //

         //   print("bouton appuyé");
          //await   fetchData();

            //print("somme de 4+5=${4+5}")  ;

            Navigator.pop(context, "Joanita s'est lavée");


          },
          child: Text('Retour'),
        ),
      ),
    );
  }


  Future<void> fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    print('Data loaded successfully!');
  }
}
