import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lox_services/utils/colors.dart';
import 'package:lox_services/utils/routes.dart';
import 'package:lox_services/widgets/lox_add_card.dart';
import 'package:lox_services/widgets/lox_button.dart';
import 'package:lox_services/widgets/lox_datefield.dart';
import 'package:lox_services/widgets/lox_no_label_textfield.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen({ Key key }) : super(key: key);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  
  final TextEditingController _locationController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
              child: Row(
                children: [
                  Image.asset(
                    'assets/menu_black.png',
                    height: 15,
                    width: 17,
                    fit: BoxFit.cover,
                  ),
                  Expanded(
                    child: Text(
                      'LOX SERVICES',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        height: 1.15
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 32,),
            Container(
              color: Color.fromRGBO(242, 242, 242, .35),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: RichText(
                  text: TextSpan(
                    text: 'LIVE LOCATION\n',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: 'Here you can change your location',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          height: 1.5
                        )
                      )
                    ]
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: RichText(
                text: TextSpan(
                  text: '08.07.2021 9:23 AM\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 12
                  ),
                  children: [
                    TextSpan(
                      text: 'Jack Miami',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        height: 1.5
                      )
                    )
                  ]
                ),
              ),
            ),
            SizedBox(height: 9,),
            Image.asset(
              'assets/map.png',
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Color(0xFF5A6CB5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Your Location',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Color(0xFFD0D4D9),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Color(0xFFED1C24),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Change Location',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Color(0xFFD0D4D9),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Container(
                    width: 30,
                    height: 33,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color.fromRGBO(101, 116, 207, .08),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/droplet.png'
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                        color: Color(0xFF222B45),
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter location'
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              color: Color(0xFFD0D4D9),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: LoxButton(
                text: 'HOME',
                radius: 0,
                color: Colors.black,
                textStyle: whiteButtonTextStyle,
                onTap: ()=>Navigator.pushReplacementNamed(context, routeHome),
              ),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}