import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CostumTextField extends StatelessWidget {
  const CostumTextField(
      {super.key, required this.hintText, this.Vert = 20.0, this.onSaved});
  final String hintText;
  final double Vert;
  final Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'This Field Is Required';
          } else {
            return null;
          }
        },
        onSaved: onSaved,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10, vertical: Vert),
            border: buildBorder(),
            focusedBorder: buildBorder(kPrimaryColor),
            hintText: hintText,
            hintStyle: const TextStyle(color: kPrimaryColor)),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(
      color: kPrimaryColor,
    ),
  );
}
