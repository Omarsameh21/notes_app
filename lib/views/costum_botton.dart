import 'package:flutter/material.dart';
import '../constants.dart';

class CostumBotton extends StatelessWidget {
  const CostumBotton({super.key, this.onTap, this.isloadig = false, required this.text});
  final Function()? onTap;
  final bool isloadig;
  final String text;
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
            onPressed: onTap,
            child: isloadig
                ? const SizedBox(
                    height: 25,
                    width: 50,
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  )
                :  Text(
                     text,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
          ),
        ),
      ),
    );
  }
}
