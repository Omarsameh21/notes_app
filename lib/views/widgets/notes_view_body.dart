import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/costum_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 36),
      child: Column(
        children: [
          CostumAppBar(),
        ],
      ),
    );
  }
}
