// Premier écran
import 'package:calavigasa2025/navigation/SecondScreen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Premier écran'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
           String data= await Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SecondScreen(name: 'Franck',),
                fullscreenDialog: true
              ),
            );

           print(data);
          },
          child: Text('Aller à l\'écran suivant'),
        ),
      ),
    );
  }
}