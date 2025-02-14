import 'package:e_commerce/screens/check_out.dart';
import 'package:e_commerce/screens/home_screen.dart';
import 'package:e_commerce/screens/profile_screen.dart';
import 'package:e_commerce/screens/signIN_screen.dart';
import 'package:e_commerce/widgets/account_option.dart';
import 'package:e_commerce/widgets/account_simmple_option.dart';
import 'package:e_commerce/widgets/custom_buttom_nav.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CheckoutScreen()),
      );
    } else if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Account',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            BuildAccountOption(
              icon: Icons.person,
              title: 'Profile',
              subtitle: 'Edit your password, name, address, email, username',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfileScreen()),
                );
              },
            ),
            BuildAccountOption(
              icon: Icons.security,
              title: 'Security',
              subtitle: 'FaceID, Two-Step Verification',
            ),
            BuildAccountOption(
              icon: Icons.shopping_bag,
              title: 'Buy Settings',
              subtitle: 'Bending History',
            ),
            BuildAccountOption(
              icon: Icons.settings,
              title: 'Settings',
              subtitle:
                  'Payment Method, Shipping Address, Notification Settings',
            ),
            SizedBox(height: 20),
            BuildSimpleOption(
              title: 'Rate Application',
            ),
            BuildSimpleOption(
              title: 'Reviews',
            ),
            BuildSimpleOption(
              trailing: Text('USD', style: TextStyle(color: Colors.blue)),
              title: 'Currency',
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInScreen()),
                );
              },
              child: Text(
                'Sign Out',
                style: TextStyle(
                    color: Color.fromARGB(255, 221, 10, 10),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
