import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CostumTextField extends StatelessWidget {
  const CostumTextField({super.key, required this.hintText, this.maxLines= 1});
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        cursorColor: KPrimaryColor,
        decoration: InputDecoration(
            border: buildBorder(),
            focusedBorder: buildBorder(KPrimaryColor),
            hintText: hintText,
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
