import 'package:flutter/material.dart';

class DotWidget extends StatelessWidget {
  const DotWidget({super.key, required this.number});

  final int number;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 3; i++)
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            width: i == number ? 25 : 6,
            height: 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: i == number ? Colors.blue : Color.fromARGB(255, 217, 217, 217),
            ),
          )
      ],
    );
  }
}
