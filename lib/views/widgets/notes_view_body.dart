import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/views/notes_item.dart';
import 'package:notes_app/views/widgets/costum_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 50),
      child: Column(
        //  scrollDirection: Axis.vertical,
        children: [
          CostumAppBar(),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const NoteItem();
        });
  }
}
