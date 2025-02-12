import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingTextWidget extends StatelessWidget {
  const OnboardingTextWidget(
      {super.key, required this.text1, required this.text2, required this.img});

  final String img;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          img,
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          text1,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 25,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            height: 1.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(text2,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 100, 99, 99),
                fontSize: 16,
                fontFamily: 'Nunito',
                height: 21.82 / 16,
              )),
        ),
      ],
    );
  }
}