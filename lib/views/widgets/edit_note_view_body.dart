import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/costum_botton.dart';
import 'package:notes_app/views/costum_text_field.dart';
import 'package:notes_app/views/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/costum_app_bar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14, left: 14, top: 50, bottom: 10),
      child: Column(
        children: [
          CostumAppBar(
            text: 'Edit Note',
            icon: const Icon(Icons.check),
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              widget.note.save();
              BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 24,
          ),
          CostumTextField(
            hintText: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 24,
          ),
          CostumTextField(
            hintText: widget.note.content,
            onChanged: (value) {
              content = value;
            },
            Vert: 60,
          ),
          const Spacer(),
          CostumBotton(
            text: 'Save Edit',
            onTap: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              widget.note.save();
              BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
