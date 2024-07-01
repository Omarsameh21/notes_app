import 'package:flutter/material.dart';

class CostumSearchIcon extends StatelessWidget {
  const CostumSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white.withOpacity(.07),
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.search,
        ),
      ),
    );
  }
}
