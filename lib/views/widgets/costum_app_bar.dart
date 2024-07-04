import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/costum_icon.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
       const Spacer(
          flex: 1,
        ),
       const CostumIcon(icon: Icon(Icons.search),)
      ],
    );
  }
}
