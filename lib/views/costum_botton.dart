import 'package:flutter/material.dart';
import '../constants.dart';

class CostumBotton extends StatelessWidget {
  const CostumBotton({super.key, this.onTap});
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kPrimaryColor,
        ),
        height: 40,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'SAVE',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
