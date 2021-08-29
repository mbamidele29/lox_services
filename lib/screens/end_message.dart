import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lox_services/utils/colors.dart';
import 'package:lox_services/utils/routes.dart';
import 'package:lox_services/widgets/lox_button.dart';

class EndMessageScreen extends StatefulWidget {
  EndMessageScreen({ Key key }) : super(key: key);

  @override
  _EndMessageScreenState createState() => _EndMessageScreenState();
}

class _EndMessageScreenState extends State<EndMessageScreen> {

  @override
  void initState() { 
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      Timer(Duration(seconds: 2), (){
        Navigator.of(context).pushNamed(routeWorkRequestEnd);
      });
    });
  }

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
              SizedBox(height: 102,),
              Center(
                child: Image.asset(
                  'assets/notification.png',
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                )
              ),
              SizedBox(height: 30,),
              Center(
                child: Text(
                  'ENDED SUCCESSFULLY',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    color: Color(0xFF1C1C1C),
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