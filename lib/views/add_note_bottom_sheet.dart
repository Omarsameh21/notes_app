import 'package:flutter/material.dart';
import 'package:notes_app/views/costum_text_field.dart';

import 'costum_botton.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: AddNoteForm(),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> FormKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: FormKey,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CostumTextField(
            hintText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CostumTextField(
            hintText: 'Content',
            Vert: 60,
            onSaved: (value) {
              content = value;
            },
          ),
          const SizedBox(
            height: 32,
          ),
          CostumBotton(
            onTap: () {
              if (FormKey.currentState!.validate()) {
                FormKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }
}
