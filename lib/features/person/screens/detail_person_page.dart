import 'package:calavigasa2025/models/person.dart';
import 'package:flutter/material.dart';

class DetailPersonPage extends StatelessWidget {
  final Person person;
  const DetailPersonPage({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${person.getFullName()}"),
      ),
    );
  }
}
