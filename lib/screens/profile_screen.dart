import 'package:e_commerce/widgets/DropDown_list.dart';
import 'package:e_commerce/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String selectedGender = 'Female';
  String selectedCountry = 'Egypt';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Edit Profile',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/user.png'),
            ),
            SizedBox(height: 8),
            Text(
              'Aml Shehta',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            CustomText(
                text: 'First Name',
                hint: 'aml',
                icon: Icons.person,
                obscureText: false,
                width: 400),
            CustomText(
                text: 'Surname',
                hint: 'shehta',
                icon: Icons.person,
                obscureText: false,
                width: 400),
            CustomText(
                text: 'Email',
                hint: 'email@email.com',
                icon: Icons.email,
                obscureText: false,
                width: 400),
            CustomText(
                text: 'Password',
                hint: '********',
                icon: Icons.lock,
                obscureText: true,
                width: 400),
            DropdownList(
              label: 'Gender',
              icon: Icons.person,
              selectedValue: selectedGender,
              onChanged: (String? newValue) {
                setState(() {
                  selectedGender = newValue!;
                });
              },
              items: ['Female', 'Male'],
            ),
            DropdownList(
              label: 'Country',
              icon: Icons.location_on,
              selectedValue: selectedCountry,
              onChanged: (String? newValue) {
                setState(() {
                  selectedCountry = newValue!;
                });
              },
              items: ['Egypt', 'USA', 'Canada', 'UK'],
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Changes saved successfully!'),
                      duration: Duration(seconds: 2),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Text(
                  'Save',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
