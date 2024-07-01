import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/costum_search_icon.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'NOTES',
          style: TextStyle(fontSize: 28),
        ),
        Spacer(
          flex: 1,
        ),
        CostumSearchIcon()
      ],
    );
  }
}
