import 'package:flutter/material.dart';
import 'package:notes_app/views/costum_botton.dart';
import 'package:notes_app/views/costum_text_field.dart';
import 'package:notes_app/views/widgets/costum_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 14, left: 14, top: 50, bottom: 10),
      child: Column(
        children: [
          CostumAppBar(
            text: 'Edit Note',
            icon: Icon(Icons.check),
          ),
          SizedBox(
            height: 24,
          ),
          CostumTextField(hintText: 'Title'),
          SizedBox(
            height: 24,
          ),
          CostumTextField(
            hintText: 'Content',
            Vert: 60,
          ),
          Spacer(),
          CostumBotton(),
          SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
