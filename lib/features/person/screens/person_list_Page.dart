import 'package:calavigasa2025/features/person/components/c_person_item.dart';
import 'package:calavigasa2025/features/person/screens/detail_person_page.dart';
import 'package:calavigasa2025/features/person/screens/form_person_page.dart';
import 'package:calavigasa2025/models/person.dart';
import 'package:calavigasa2025/useCase/service_person.dart';
import 'package:flutter/material.dart';

class PersonListPage extends StatefulWidget {
  const PersonListPage({super.key});

  @override
  State<PersonListPage> createState() => _PersonListPageState();
}

class _PersonListPageState extends State<PersonListPage> {
  final ServicePerson servicePerson = ServicePerson();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: ListView(
        children: servicePerson.persons
            .map((person) => CPersonItem(
                  person: person,
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPersonPage(person: person),
                      )),
                  onLongPress: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) =>Container(
                        height: 200,
                        child: ListView(
                          children: [
                            ListTile(
                              title: Text("Editer"),
                              leading: Icon(Icons.edit),
                              onTap: (){
                                Navigator.pop(context);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailPersonPage(person: person),
                                    ));
                              },
                            ),
                            ListTile(
                              title: Text("Partager "),
                              leading: Icon(Icons.share),
                              onTap: (){

                              },
                            ),
                            ListTile(
                              title: Text("Delete ", style: TextStyle(color: Colors.red),),
                              leading: Icon(Icons.delete, color: Colors.red,),
                              onTap: (){
                                Navigator.pop(context);
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text("Confirmation"),
                                      content: Text("Voulez-vous vraiment supprimer cet élément ?"),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop(); // Ferme la boîte de dialogue
                                          },
                                          child: Text("Annuler"),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            servicePerson.delete(person);

                                            Navigator.of(context).pop(); // Ferme la boîte de dialogue
                                         // Appelle la fonction de suppression
                                            setState(() {

                                            });
                                          },
                                          child: Text("Supprimer", style: TextStyle(color: Colors.red)),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    );

                    },
                ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Person person = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FormPersonPage(),
              ));

          if (person != null) {
            servicePerson.add(person);
            setState(() {});
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
