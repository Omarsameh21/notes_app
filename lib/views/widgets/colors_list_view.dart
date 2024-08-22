import 'package:flutter/material.dart';

class ColorsList extends StatelessWidget {
  const ColorsList({super.key, required this.isChoose, required this.color});
  final bool isChoose;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isChoose
        ? Stack(
            children: [
              CircleAvatar(
                  radius: 30,
                  backgroundColor: color.withOpacity(0.75),
                  child: const Icon(
                    Icons.check,
                    size: 28,
                  )),
            ],
          )
        : CircleAvatar(
            radius: 28,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List colors = const [
    Color(0xff2d4354),
    Color(0xff73766a),
    Color(0xfffed7a5),
    Color(0xff9e6752),
    Color(0xff534145),
    Color(0xff3d4d55),
    Color(0xffa79e9c),
    Color(0xffd3c3b9),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorsList(
                isChoose: currentIndex == index,
                color: colors[index],
              ),
            ),
          );
        },
        itemCount: colors.length,
      ),
    );
  }
}
