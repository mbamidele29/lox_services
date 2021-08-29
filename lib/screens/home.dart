import 'package:flutter/material.dart';
import 'package:lox_services/utils/colors.dart';
import 'package:lox_services/widgets/lox_button.dart';
import 'package:lox_services/widgets/lox_dropdown.dart';
import 'package:lox_services/widgets/lox_floating_textfield.dart';
import 'package:lox_services/utils/routes.dart';
import 'package:lox_services/widgets/lox_menu.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({ Key key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String _timeEstimate;
  bool showMenu=false;
  final TextEditingController _taskcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 53,),
                Container(
                  color: Colors.black,
                  width: double.infinity,
                  height: 309,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 243,
                        left: 120,
                        child: Text(
                          'Order from lox services\nnow',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            height: 1.15
                          ),
                        ),
                      ),
                      Positioned(
                        top: 68,
                        left: 28,
                        right: 28,
                        child: Image.asset(
                          'assets/girl.png',
                          height: 182,
                        ),
                      ),
                      Positioned(
                        top: 68,
                        left: 28,
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              showMenu=true;
                            });
                          },
                          child: Image.asset(
                            'assets/menu.png',
                            height: 15,
                            width: 17,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 38,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order Now',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          height: 1.15
                        ),
                      ),
                      SizedBox(height: 48,),
                      LoxFloatingTextField(
                        placeholder: 'Task Title', 
                        controller: _taskcontroller
                      ),
                      SizedBox(height: 20,),
                      Text(
                        'Time estimate',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          height: 1.57,
                        ),
                      ),
                      SizedBox(height: 8,),
                      LoxDropDown(
                        items: ['2Hrs-3Hrs', '4Hrs-5Hrs'],
                        selected: _timeEstimate,
                        onChange: (value){
                          setState(() {
                            _timeEstimate=value;
                          });
                        },
                      ),
                      SizedBox(height: 66,),
                      LoxButton(
                        text: 'PROCEED',
                        color: Colors.black,
                        radius: 4,
                        textStyle: whiteButtonTextStyle,
                        onTap: ()=>Navigator.pushNamed(context, routeConfirm),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: showMenu,
            child: LoxMenu(close: (){
              setState(() {
                showMenu=false;
              });
            }),
          )
        ],
      ),
    );
  }
}