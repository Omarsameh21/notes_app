import 'package:flutter/material.dart';
import 'package:notes_app/views/costum_text_field.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 32,
        ),
        CostumTextField(),
      ],
    );
  }
}
