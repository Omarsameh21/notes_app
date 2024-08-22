import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/costum_icon.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({super.key, required this.text, required this.icon, this.onPressed});
  final String text;
  final Icon icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 28),
        ),
        const Spacer(
          flex: 1,
        ),
         CostumIcon(
          onPressed: onPressed,
          icon: icon,
        )
      ],
    );
  }
}
