import 'package:calavigasa2025/models/person.dart';
import 'package:flutter/material.dart';

class CPersonItem extends StatelessWidget {
  final Person person;
  final void Function()? onTap;
  final void Function()? onLongPress;

  const CPersonItem(
      {super.key, required this.person, this.onTap, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("${person.getFullName()}"),
      subtitle: Text("${person.phoneNumber}"),
      leading: CircleAvatar(
        child: Icon(Icons.person),
      ),
      trailing: Icon(
        Icons.call,
        color: Colors.green,
      ),
      onTap: onTap,
      onLongPress: onLongPress,
    );
  }
}
