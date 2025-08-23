
import 'package:flutter/material.dart';
import 'package:my_menu/util/pair.dart';

class DoubleCategoryItemList extends StatelessWidget {

  final Map<String, Pair<String, String>> items;
  final Pair<String, String> category;

  const DoubleCategoryItemList({
    super.key,
    required this.items,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {

    final item    = items.keys.toList();
    final prices  = items.values.toList();

    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              const Spacer(flex: 6),

              Expanded(
                flex: 2,
                child: Text(
                  category.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 10,
                    color: Colors.red,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              Expanded(
                flex: 2,
                child: Text(
                  category.right,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 10,
                    color: Colors.red,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

            ],
          ),
          const SizedBox(height: 2),

          // items
          ListView.builder(
            shrinkWrap: true,
            itemCount: item.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {

              final pairItem = prices[index];

              return Container(
                margin: EdgeInsets.symmetric(vertical: 1),
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Text(
                        item[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 10,
                        ),
                      ),
                    ),

                    // first category price
                    Expanded(
                      flex: 2,
                      child: Text(
                        pairItem.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    // second category price
                    Expanded(
                      flex: 2,
                      child: Text(
                        pairItem.right,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              );

            },
          ),
        ],
      ),
    );
  }
}
