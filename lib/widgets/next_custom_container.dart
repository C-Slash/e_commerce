import 'package:flutter/material.dart';

class NextCustomContainer extends StatelessWidget {
  const NextCustomContainer({
    super.key,
    required this.page,
    required this.index,
  });

  final PageController page;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        page.animateToPage(index,
            duration: Duration(milliseconds: 500), curve: Curves.easeIn);
      },
      child: Container(
        width: 350,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Center(
          child: Text(
            "Next",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Roboto',
            ),
          ),
        ),
      ),
    );
  }
}
