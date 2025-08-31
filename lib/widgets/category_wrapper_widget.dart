import 'package:flutter/material.dart';

class CategoryWrapperWidget extends StatelessWidget {

  final String title, description;
  final Widget childWidget;

  const CategoryWrapperWidget({
    super.key,
    required this.title,
    this.childWidget  = const Center(child: Text("Coming Soon")),
    this.description  = '',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [

          // menu category title
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // left border
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 18),
                    decoration: BoxDecoration(
                        color: Colors.white70,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                      ),
                      border: Border(
                        top: BorderSide(color: Colors.black, width: 1),
                        left: BorderSide(color: Colors.black, width: 1),
                      )
                    ),
                  ),
                ),

                // category title
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.grey,
                  ),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),

                // right border
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 18),
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                        ),
                        border: Border(
                          top: BorderSide(color: Colors.black, width: 1),
                          right: BorderSide(color: Colors.black, width: 1),
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),

          // desc text
          if (description.isNotEmpty) ...[
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white70,
                border: Border(
                  left: BorderSide(color: Colors.black, width: 1),
                  right: BorderSide(color: Colors.black, width: 1),
                ),
              ),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          ],

          // menu items
          Container(
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              border: Border(
                left: BorderSide(color: Colors.black, width: 1),
                right: BorderSide(color: Colors.black, width: 1),
                bottom: BorderSide(color: Colors.black, width: 1),
              ),
            ),
            child: childWidget,
          ),
        ],
      ),
    );
  }
}
