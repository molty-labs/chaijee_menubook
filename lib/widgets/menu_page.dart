
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {

  final List<Widget> items;
  const MenuPage({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/menu_bg.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(items.length, (index) => items[index]),
        ),
      ),
    );
  }
}
