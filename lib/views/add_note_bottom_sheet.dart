import 'package:flutter/material.dart';
import 'package:notes_app/views/costum_text_field.dart';

import 'costum_botton.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CostumTextField(
            hintText: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CostumTextField(
            hintText: 'Content',
            Vert: 60,
          ),
          SizedBox(
            height: 32,
          ),
          CostumBotton(),
          SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }
}
