import 'package:e_commerce/screens/order_success.dart';
import 'package:e_commerce/widgets/DropDown_list.dart';
import 'package:e_commerce/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}
  String selectedCountry = 'Egypt';
class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Check out',
          style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Shipping',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.1),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.home, color: Colors.blue),
                        SizedBox(width: 5),
                        Text('Home',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.phone, color: Colors.blue),
                        SizedBox(width: 5),
                        Text('+20 012 345 678',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.blue),
                        SizedBox(width: 5),
                        Text('New York, 2022 B road #15',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text('Add a new address',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              CustomText(
                text: 'Full Name',
                hint: 'Enter your full name',
                width: 400,
                icon: Icons.person,
                obscureText: false,
              ),
              SizedBox(height: 10),
              CustomText(
                text: 'Email',
                hint: 'email@email.com',
                width: 400,
                icon: Icons.email,
                obscureText: false,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  CustomText(
                    text: 'PIN Code',
                    hint: '412332',
                    width: 180,
                    obscureText: false,
                  ),
                  SizedBox(width: 15),
                  CustomText(
                    text: 'State',
                    hint: 'Mashaty',
                    width: 180,
                    obscureText: false,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  CustomText(
                    text: 'City',
                    hint: 'Angly',
                    width: 180,
                    icon: Icons.location_on,
                    obscureText: false,
                  ),
                  SizedBox(width: 15),
                  CustomText(
                    text: 'House',
                    hint: '451',
                    width: 180,
                    icon: Icons.location_on,
                    obscureText: false,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Road, Area, Building name',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              SizedBox(height: 8),
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
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderSuccessScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Confirm Process",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
