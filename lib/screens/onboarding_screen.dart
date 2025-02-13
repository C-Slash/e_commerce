import 'package:e_commerce/screens/signIN_screen.dart';
import 'package:e_commerce/screens/signUp_screen.dart';
import 'package:e_commerce/widgets/dot_widget.dart';
import 'package:e_commerce/widgets/next_custom_container.dart';
import 'package:e_commerce/widgets/onboarding_text_widget.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController nextPage = PageController();
  int pageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  pageNumber = value;
                });
              },
              controller: nextPage,
              children: [
                onboardingPage(
                  "Welcome To The World Of Easy Shopping",
                  "You Can Explore Thousands Of Products Easily\nAnd Quickly; We Are Here To Make Your Shopping Experience Enjoyable And Smooth.",
                  "images/shopping.svg",
                  nextPage,
                  1,
                ),
                onboardingPage(
                  "Exclusive offers tailored for you",
                  "Get exclusive deals and discounts that suit your taste. Enjoy a personalized shopping experience that meets all your needs.",
                  "images/bags.svg",
                  nextPage,
                  2,
                ),
                lastOnboardingPage(),
              ],
            ),
          ),

          // Skip Button with Double Arrow Icon
          if (pageNumber < 2)
            Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                onPressed: () {
                  nextPage.jumpToPage(2);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "SKIP",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.keyboard_double_arrow_right,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget onboardingPage(
      String title, String subtitle, String img, PageController controller, int index) {
    return Column(
      children: [
        OnboardingTextWidget(text1: title, text2: subtitle, img: img),
        SizedBox(height: 10),
        DotWidget(number: pageNumber),
        SizedBox(height: 10),
        NextCustomContainer(page: controller, index: index),
      ],
    );
  }

  Widget lastOnboardingPage() {
    return Column(
      children: [
        OnboardingTextWidget(
          text1: "Secure and fast payment with a single touch",
          text2: "Enjoy a smooth and secure payment experience with various payment options. Shop with confidence and pay effortlessly.",
          img: "images/amico.svg",
        ),
        SizedBox(height: 25),
        DotWidget(number: pageNumber),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  "Sign up",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  side: BorderSide(color: Colors.blue),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  "Sign in",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
