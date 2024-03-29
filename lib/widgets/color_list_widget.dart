import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});
  final bool isSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundColor: color,
                  radius: 37,
                ),
              ),
              const SizedBox(
                width: 10,
              )
            ],
          )
        : Row(
            children: [
              CircleAvatar(
                backgroundColor: color,
                radius: 40,
              ),
              const SizedBox(
                width: 10,
              )
            ],
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int selectedIndex = 0;
  List<Color> colorList = [
    const Color(0xffec111a),
    const Color(0xfffb6330),
    const Color(0xffffd42f),
    const Color(0xff138468),
    const Color(0xff009dd6),
    const Color(0xff7849b8),
    const Color(0xfff2609e),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: colorList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              selectedIndex = index;
              setState(() {});
            },
            child: ColorItem(
              color: colorList[index].withOpacity(.9),
              isSelected: selectedIndex == index,
            ),
          );
        },
      ),
    );
  }
}
