import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [

          ...List.generate(2, (_) => Colors.lightGreen),
          ...List.generate(4, (_) => Colors.yellow),
          ...List.generate(8, (_) => Colors.white),

          ...List.generate(8, (_) => Colors.white),
          ...List.generate(4, (_) => Colors.yellow),
          ...List.generate(2, (_) => Colors.lightGreen),
        ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // menu text
          const Spacer(flex: 1),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset(
                "assets/chai_jee_logo.jpg",
                width: 120,
                height: 120,
              ),
              const SizedBox(width: 2),
              Image.asset(
                "assets/waffle_jee_logo.jpg",
                width: 120,
                height: 120,
              ),

            ],
          ),

          const Spacer(flex: 2),
          SizedBox(
            width: double.infinity,
            child: Text(
              "Menu",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.black,
                fontSize: 58,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(flex: 2),

          Lottie.asset(
            'assets/swipe_lottie.json',
            height: 80,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              "Swipe to find the Best",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
