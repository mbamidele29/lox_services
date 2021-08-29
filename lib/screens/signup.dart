import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lox_services/utils/colors.dart';
import 'package:lox_services/utils/routes.dart';
import 'package:lox_services/widgets/lox_button.dart';
import 'package:lox_services/widgets/lox_textfield.dart';

class SignupScreen extends StatefulWidget {
  final String data;
  const SignupScreen({ Key key, this.data }) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  bool _signup;
  bool toggle=true;
  final TextEditingController _phoneController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  final TextEditingController _codeController=TextEditingController();

  @override
  void initState() { 
    super.initState();
    if(widget.data==null)_signup=true;
    else _signup=false;
  }
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
                    AnimatedSwitcher(
                      duration: Duration(milliseconds: 800),
                      switchInCurve: Curves.easeInOut,
                      child: _signup ? 
                        LoxButton(
                          text: 'LOG IN',
                          color: Colors.black,
                          radius: 4,
                          textStyle: whiteButtonTextStyle,
                          onTap: (){
                            setState(() {
                              if(!_signup)toggle=true;
                              _signup=!_signup;
                            });
                          },
                          // onTap: ()=>Navigator.pushReplacementNamed(context, routeLogin),
                        ) :
                        LoxButton(
                          text: 'SIGN UP',
                          color: Colors.black,
                          radius: 4,
                          textStyle: whiteButtonTextStyle,
                          onTap: (){
                            setState(() {
                              if(!_signup)toggle=true;
                              _signup=!_signup;
                            });
                          },
                          // onTap: ()=>Navigator.pushReplacementNamed(context, routeLogin),
                        ),
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
                    SizedBox(height: 10,),
                    AnimatedSwitcher(
                      duration: Duration(milliseconds: 800),
                      switchInCurve: Curves.easeInOut,
                      child: _signup ? 
                        LoxTextField(
                          placeholder: 'Referral code (optional)', 
                          controller: _codeController
                        ) :
                        SizedBox.shrink()
                    ),
                    SizedBox(height: 30,),
                    AnimatedSwitcher(
                      duration: Duration(milliseconds: 800),
                      switchInCurve: Curves.easeInOut,
                      child: _signup ? 
                        LoxButton(
                          text: 'SIGN UP', 
                          color: Color(0xFFF93C26), 
                          textStyle: whiteButtonTextStyle, 
                          onTap: ()=>Navigator.of(context).pushReplacementNamed(routeHome)
                        ) :
                        LoxButton(
                          text: 'LOG IN', 
                          color: Color(0xFFF93C26), 
                          textStyle: whiteButtonTextStyle, 
                          onTap: ()=>Navigator.of(context).pushReplacementNamed(routeHome)
                        ),
                    ),
                    SizedBox(height: 10,),
                    AnimatedSwitcher(
                      duration: Duration(milliseconds: 800),
                      switchInCurve: Curves.easeInOut,
                      child: _signup ? 
                        RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'By joining, you agree to our\n',
                          style: TextStyle(
                            color: Color(0xFFA1ABB2),
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            height: 1.14
                          ),
                          children:[
                            TextSpan(
                              text: 'Terms and Privacy',
                              style: TextStyle(
                                color: Color(0xFFF93C26),
                              ),
                            ),
                          ]
                        ),
                      ) :
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
                      )
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