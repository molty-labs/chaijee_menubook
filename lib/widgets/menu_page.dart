
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {

  final List<Widget> items;
  final String endingNote;

  const MenuPage({super.key, required this.items, this.endingNote = ''});

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // page content
            ...List.generate(items.length, (index) => items[index]),

            // ending note text
            if (endingNote.isNotEmpty) ...[
              Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Text(
                  endingNote,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
