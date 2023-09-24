import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});
  final bool isSelected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: isSelected
          ? CircleAvatar(
              radius: 33,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundColor: color,
                radius: 26,
              ),
            )
          : CircleAvatar(
              backgroundColor: color,
              radius: 33,
            ),
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
  List<Color> colors = [
    Colors.blue,
    Colors.orange,
    Colors.green,
    Colors.deepOrange,
    Colors.amber,
    Colors.lightBlue,
    Colors.red,
    Colors.blue,
    Colors.orange,
    Colors.green,
    Colors.deepOrange,
    Colors.amber,
    Colors.lightBlue,
    Colors.red
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(
              isSelected: currentIndex == index ? true : false,
              color: colors[index],
            ),
          );
        },
      ),
    );
  }
}
