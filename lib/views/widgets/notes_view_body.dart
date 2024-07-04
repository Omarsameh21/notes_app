import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_item.dart';
import 'package:notes_app/views/widgets/costum_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 14, left: 14, top: 50, bottom: 10),
      child: Column(
        children: [
          CostumAppBar(
            text: 'Notes', icon: Icon(Icons.search),
          ),
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
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return const NoteItem();
        });
  }
}
