import 'package:flutter/material.dart';
import 'package:lox_services/utils/colors.dart';
import 'package:lox_services/utils/routes.dart';
import 'package:lox_services/widgets/lox_button.dart';
import 'package:lox_services/widgets/lox_floating_textfield.dart';

class WorkRequestEndScreen extends StatefulWidget {
  WorkRequestEndScreen({ Key key }) : super(key: key);

  @override
  _WorkRequestEndScreenState createState() => _WorkRequestEndScreenState();
}

class _WorkRequestEndScreenState extends State<WorkRequestEndScreen> {

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
              SizedBox(height: 120,),
              Center(
                child: Container(
                  width: double.infinity,
                  color: Color(0xFFFC0000),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 26),
                    child: Text(
                      'Total Amount: N3000',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        height: 1.15
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 77,),
              LoxButton(
                text: 'CLOSE',
                radius: 0,
                color: Colors.black,
                textStyle: whiteButtonTextStyle,
                onTap: ()=>Navigator.pushNamedAndRemoveUntil(context, routeHome, (route) => false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}