import 'package:e_commerce/screens/payment_method.dart';
import 'package:e_commerce/widgets/text_widget.dart';
import 'package:flutter/material.dart';


class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
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
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
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
                icon: Icon(Icons.person),
              ),
              SizedBox(height: 10),
              CustomText(
                text: 'Email',
                hint: 'email@email.com',
                width: 400,
                icon: Icon(Icons.email),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  CustomText(
                    text: 'PIN Code',
                    hint: '412332',
                    width: 180,
                  ),
                  SizedBox(width: 15),
                  CustomText(
                    text: 'State',
                    hint: 'mashaty',
                    width: 180,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  CustomText(
                    text: 'City',
                    hint: 'angly',
                    width: 180,
                    icon: Icon(Icons.location_on),
                  ),
                  SizedBox(width: 15),
                  CustomText(
                    text: 'House',
                    hint: '451',
                    width: 180,
                    icon: Icon(Icons.location_on),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Road, Area, Building name',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              SizedBox(height: 8),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: Color(0xFFF7FAFC),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: "Egypt",
                    icon: Icon(Icons.keyboard_arrow_down, color: Colors.grey),
                    isExpanded: true,
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                    items: ["Egypt", "USA", "UK", "Canada", "Germany"]
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.blueGrey),
                            SizedBox(width: 8),
                            Text(value),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {},
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentScreen()),
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
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
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
