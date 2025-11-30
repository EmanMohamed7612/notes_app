import 'package:flutter/material.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors =const [
    Color(0xff592941),
    Color(0xff498467),
    Color(0xff52b788),
    Color(0xffb2d3a8),
    Color(0xffede5a6),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 3.5),
            ),
            child: CircleAvatar(radius: 32, backgroundColor: color),
          )
        : CircleAvatar(radius: 36, backgroundColor: color);
  }
}
