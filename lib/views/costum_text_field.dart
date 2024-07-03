import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CostumTextField extends StatelessWidget {
  const CostumTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        cursorColor: KPrimaryColor,
        decoration: InputDecoration(
            border: buildBorder(),
            focusedBorder: buildBorder(KPrimaryColor),
            hintText: 'Title',
            hintStyle: const TextStyle(color: KPrimaryColor)),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(
      color: KPrimaryColor,
    ),
  );
}
