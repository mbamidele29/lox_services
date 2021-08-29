import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lox_services/utils/colors.dart';
import 'package:lox_services/utils/routes.dart';
import 'package:lox_services/widgets/lox_button.dart';
import 'package:lox_services/widgets/lox_textfield.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({ Key key }) : super(key: key);

  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {

  final TextEditingController _phoneController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27.0, vertical: 32),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'LOX SERVICES',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    height: 1.15
                  ),
                ),
                SizedBox(height: 121,),
                Column(
                  children: [
                    LoxTextField(
                      placeholder: 'Phone', 
                      formatter: [FilteringTextInputFormatter.digitsOnly],
                      controller: _phoneController
                    ),
                    SizedBox(height: 30,),
                    LoxButton(
                      text: 'RESET',
                      color: Colors.black,
                      textStyle: whiteButtonTextStyle,
                      onTap: ()=>null,
                    ),
                    SizedBox(height: 10,),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Don\'t have an account? ',
                        style: TextStyle(
                          color: Color(0xFFA1ABB2),
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          height: 1.14
                        ),
                        children:[
                          WidgetSpan(
                            child: GestureDetector(
                              onTap: ()=>Navigator.pushReplacementNamed(context, routeSignup),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Color(0xFFF93C26),
                                ),
                              ),
                            ),
                          ),
                        ]
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}