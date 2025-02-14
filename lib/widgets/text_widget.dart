import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.hint,
    required this.width,
    this.icon, 
  });

  final String text;
  final String hint;
  final double width;
  final Icon? icon; 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(color: Colors.grey),
          hintText: hint,
          prefixIcon: icon != null ? Icon(
            icon!.icon, 
            color: Colors.blueGrey, 
          ) : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey, width: 2),
          ),
        ),
      ),
    );
  }
}
