import 'package:e_commerce/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement( 
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Center content in the middle

          children: [
            SvgPicture.asset(
              "images/logo.svg",
              height: 70,
              width: 70,
            ),

            const SizedBox(height: 10), // Add space between logo and text

            Text(
              "Shopréme",
              style: GoogleFonts.pacifico(
                fontSize: 38,
                fontWeight: FontWeight.w400,
                height: 47.37 / 38, // Line height converted
                color: Colors.blue, // Match logo color
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
