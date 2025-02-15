import 'package:calavigasa2025/features/person/screens/person_list_Page.dart';
import 'package:flutter/material.dart';

void main() {
  print('hello');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PersonListPage(),
    );
  }
}
