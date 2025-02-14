import 'package:e_commerce/screens/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Forgot Password",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Select which contact details should we use to reset your password",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SvgPicture.asset("images/forgotPassword.svg"),
                ],
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedOption = "sms";
                });
              },
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: selectedOption == "sms" ? Colors.blue : Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.message, color: Colors.blue),
                    SizedBox(width: 10),
                    Text("Via SMS"),
                    Spacer(),
                    Text("+2 01*** *** **8")
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedOption = "email";
                });
              },
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: selectedOption == "email" ? Colors.blue : Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.email, color: Colors.blue),
                    SizedBox(width: 10),
                    Text("Via Email"),
                    Spacer(),
                    Text("am******@*****.com")
                  ],
                ),
              ),
            ),
            Spacer(),
            SizedBox(
  width: double.infinity,
  child: ElevatedButton(
    onPressed: selectedOption == null
        ? null
        : () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OtpScreen()),
            );
          },
    child: Text("Continue", style: TextStyle(color: Colors.white)),
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 15),
      textStyle: TextStyle(fontSize: 18),
      backgroundColor: Colors.blue,
    ),
  ),
)

          ],
        ),
      ),
    );
  }
}
