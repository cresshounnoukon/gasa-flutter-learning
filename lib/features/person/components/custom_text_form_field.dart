import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String inputName;
  final String? placeHolder;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;

  const CustomTextFormField({
    super.key,
    required this.inputName,
    this.placeHolder,
    this.validator,
    this.onChanged,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$inputName",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8.0,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                hintText: placeHolder == null
                    ? "Enter your $inputName"
                    : placeHolder),
            validator: validator,
            onChanged: onChanged,
            onSaved: onSaved,
          ),
        ),
      ],
    );
  }
}
