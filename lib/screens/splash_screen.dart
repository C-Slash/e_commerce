import 'package:e_commerce/screens/onboarding_screen.dart';
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
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(top: 50, left: 20, child: Image.asset("images/G2.png", width: 150, height: 150)),
          Positioned(top: 100, right: 20, child: Image.asset("images/G1.png", width: 150, height: 150)),
          Positioned(bottom: 100, left: 30, child: Image.asset("images/G4.png", width: 150, height: 150)),
          Positioned(bottom: 50, right: 30, child: Image.asset("images/G3.png", width: 150, height: 150)),

          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  "images/logo.svg",
                  height: 70,
                  width: 70,
                ),
                const SizedBox(height: 10),
                Text(
                  "Shopréme",
                  style: GoogleFonts.pacifico(
                    fontSize: 38,
                    fontWeight: FontWeight.w400,
                    height: 47.37 / 38,
                    color: Colors.blue,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
