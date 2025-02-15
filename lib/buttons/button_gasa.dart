
import 'package:calavigasa2025/features/person/screens/person_list_Page.dart';
import 'package:calavigasa2025/main.dart';
import 'package:flutter/material.dart';

class ButtonGasa extends StatelessWidget {
  const ButtonGasa({super.key});

  @override
  Widget build(BuildContext context) {

    return   Scaffold(
      appBar: AppBar(
        title: Text("Section Button"),
      ) ,
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            print("appuie sur un bouton");
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PersonListPage(),)
            );
          }, child: Text("Se connecter")),
          TextButton(
            onPressed: () {
              // Action à effectuer lors du clic sur le bouton
            },
            child: Text('Bouton'),
          ),
          OutlinedButton(
            onPressed: () {
              // Action à effectuer lors du clic sur le bouton
            },
            child: Text('Bouton'),
          ),
          IconButton(
            onPressed: () {
              // Action à effectuer lors du clic sur le bouton
            },
            icon: Icon(Icons.add),
          )

        ],
      ),
    );
  }
}
