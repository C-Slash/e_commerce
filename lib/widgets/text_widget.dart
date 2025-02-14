import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.hint,
    required this.width,
    this.icon,
    this.obscureText = false,
  });

  final String text;
  final String hint;
  final double width;
  final IconData? icon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),
        ),
        SizedBox(height: 8),
        Container(
          width: width,
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: TextField(
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(color: Colors.black45),
              prefixIcon: icon != null ? Icon(icon, color: Colors.blueGrey) : null,
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
