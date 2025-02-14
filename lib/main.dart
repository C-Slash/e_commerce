import 'package:e_commerce/screens/check_out.dart';
import 'package:e_commerce/screens/forgot_password_screen.dart';
import 'package:e_commerce/screens/home_screen.dart';
import 'package:e_commerce/screens/otp_screen.dart';
import 'package:e_commerce/screens/reset_password.dart';
import 'package:e_commerce/screens/signIN_screen.dart';
import 'package:e_commerce/screens/signUp_screen.dart';
import 'package:e_commerce/screens/splash_screen.dart';
import 'package:e_commerce/widgets/product_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CheckoutScreen()
    ); 
  }
}

