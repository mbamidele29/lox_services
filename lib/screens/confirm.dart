import 'package:flutter/material.dart';
import 'package:lox_services/utils/colors.dart';
import 'package:lox_services/utils/routes.dart';
import 'package:lox_services/widgets/lox_button.dart';
import 'package:lox_services/widgets/lox_floating_textfield.dart';

class ConfirmScreen extends StatefulWidget {
  ConfirmScreen({ Key key }) : super(key: key);

  @override
  _ConfirmScreenState createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {

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
              SizedBox(height: 54,),
              Center(
                child: Image.asset(
                  'assets/exclamation-mark.png',
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 33,),
              Center(
                child: Text(
                  'start Task?',
                  style: TextStyle(
                    color: Color(0xFF1C1C1C),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    height: 1.15
                  ),
                ),
              ),
              SizedBox(height: 87,),
              Row(
                children: [
                  Expanded(
                    child: LoxButton(
                      text: 'NO',
                      radius: 0,
                      showShadow: false,
                      color: Colors.white,
                      borderColor: Colors.black,
                      textStyle: blackButtonTextStyle,
                      onTap: ()=>Navigator.pop(context),
                    ),
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: LoxButton(
                      text: 'YES',
                      radius: 0,
                      showShadow: false,
                      color: Colors.black,
                      textStyle: whiteButtonTextStyle,
                      onTap: ()=>Navigator.pushNamed(context, routeWorkRequest),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}