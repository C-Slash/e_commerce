import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({super.key, required this.category, required this.link});


  final String category;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: Offset(0, 4),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              link,
              height: 100,
              width: 150,
            ),
            Text(
              category,
              style: TextStyle(
                color: Color.fromARGB(255, 110, 110, 110),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
