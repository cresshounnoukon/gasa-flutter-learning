
import 'package:calavigasa2025/features/person/components/custom_text_form_field.dart';
import 'package:calavigasa2025/models/person.dart';
import 'package:flutter/material.dart';

class FormPersonPage extends StatefulWidget {
  const FormPersonPage({super.key});

  @override
  State<FormPersonPage> createState() => _FormPersonPageState();
}

class _FormPersonPageState extends State<FormPersonPage> {
  final _formKey = GlobalKey<FormState>(); // Déclaration de la GlobalKey

  final Person person = Person(firstName: "", lastName: "", phoneNumber: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add "),
        actions: [
          IconButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState?.save();
                  Navigator.pop(context, person);
                  _formKey.currentState?.reset();
                }
              },
              icon: Icon(Icons.check)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            key: _formKey,
            child: ListView(
              children: [
                CustomTextFormField(
                  inputName: "First name",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Ce champ est requis";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    person.firstName = "$value";
                  },
                ),
                CustomTextFormField(
                  inputName: "Last Name",
                  onSaved: (value) {
                    person.lastName = "$value";
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Ce champ est requis";
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  inputName: "First email",
                  onSaved: (value) {
                    person.email = "$value";
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Ce champ est requis";
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  inputName: "Phone number",
                  placeHolder: "+229 01XXXXXXXX",
                  onSaved: (value) {
                    person.phoneNumber = "$value";
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Ce champ est requis";
                    }
                    return null;
                  },
                ),
              ],
            )),
      ),
    );
  }
}
