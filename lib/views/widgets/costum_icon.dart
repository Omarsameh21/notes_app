import 'package:flutter/material.dart';

class CostumIcon extends StatelessWidget {
  const CostumIcon({super.key, required this.icon});
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white.withOpacity(.07),
      ),
      child: IconButton(onPressed: () {}, icon: icon),
    );
  }
}
