
import 'package:flutter/material.dart';

class SingleCategoryItemList extends StatelessWidget {

  final Map<String, String> items;
  const SingleCategoryItemList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {

    final item    = items.keys.toList();
    final prices  = items.values.toList();

    return Container(
      padding: EdgeInsets.all(16),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: item.length,
        itemBuilder: (context, index) {

          return Container(
            margin: EdgeInsets.symmetric(vertical: 1),
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Text(
                    item[index],
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 10,
                    ),
                  ),
                ),

                Expanded(
                  child: Text(
                    prices[index],
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          );

        },
      ),
    );
  }
}
