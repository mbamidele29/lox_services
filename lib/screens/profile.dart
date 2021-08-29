import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lox_services/utils/colors.dart';
import 'package:lox_services/utils/routes.dart';
import 'package:lox_services/widgets/lox_add_card.dart';
import 'package:lox_services/widgets/lox_button.dart';
import 'package:lox_services/widgets/lox_datefield.dart';
import 'package:lox_services/widgets/lox_no_label_textfield.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({ Key key }) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  
  final TextEditingController _nameController=TextEditingController(text: 'AMINA LATEEF');
  final TextEditingController _dateController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
              SizedBox(height: 52,),
              Text(
                'Get Started',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Color(0xFF333333),
                ),
              ),
              SizedBox(height: 21,),
              Container(
                width: 125,
                height: 97,
                decoration: BoxDecoration(
                  color: Color(0xFFF9F9F9),
                  border: Border.all(color: Color(0xFFD2D2D2),)
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/gallery.png',
                        height: 32,
                        width: 32,
                      ),
                      SizedBox(height: 2,),
                      Text(
                        'Upload Image/gif',
                        style: TextStyle(
                          fontSize: 7,
                          color: Color(0xFFC1C1C1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              LoxNoLabelTextField(
                label: 'Full Name',
                controller: _nameController
              ),
              SizedBox(height: 22,),
              LoxDateField(controller: _dateController),
              SizedBox(height: 22,),
              LoxAddCard(),
              SizedBox(height: 57,),
              LoxButton(
                text: 'SAVE',
                radius: 0,
                color: Colors.black,
                textStyle: whiteButtonTextStyle,
                onTap: ()=>Navigator.pushReplacementNamed(context, routeHome),
              ),
            ],
          ),
        ),
      ),
    );
  }
}