import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lox_services/utils/colors.dart';
import 'package:lox_services/utils/routes.dart';
import 'package:lox_services/widgets/lox_button.dart';
import 'package:lox_services/widgets/lox_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController _phoneController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
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
                SizedBox(height: 50,),
                Column(
                  children: [
                    LoxButton(
                      text: 'SIGN UP',
                      color: Colors.black,
                      radius: 4,
                      textStyle: whiteButtonTextStyle,
                      onTap: ()=>Navigator.pushReplacementNamed(context, routeSignup),
                    ),
                    SizedBox(height: 50,),
                    Text(
                      'OR',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        height: 1.14,
                        color: Color(0xFF8B999F)
                      ),
                    ),
                    SizedBox(height: 20,),
                    LoxTextField(
                      placeholder: 'Phone', 
                      formatter: [FilteringTextInputFormatter.digitsOnly],
                      controller: _phoneController
                    ),
                    SizedBox(height: 10,),
                    LoxTextField(
                      placeholder: 'Password', 
                      controller: _passwordController
                    ),
                    SizedBox(height: 30,),
                    LoxButton(
                      text: 'LOG IN', 
                      color: Color(0xFFF93C26), 
                      textStyle: whiteButtonTextStyle, 
                      onTap: ()=>Navigator.of(context).pushReplacementNamed(routeHome)
                    ),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: ()=>Navigator.pushReplacementNamed(context, routeForgotPassword),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Forgot Password?',
                          style: TextStyle(
                            color: Color(0xFFA1ABB2),
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            height: 1.14
                          ),
                          children:[],
                        ),
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