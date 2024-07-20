import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/cubits/add_note_cubit/add_note_cubit.dart';
import '../costum_botton.dart';
import '../costum_text_field.dart';

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
                var noteModel = NoteModel(
                    title: title!,
                    content: content!,
                    date: DateTime.now().toString(),
                    color: Colors.blue.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
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
