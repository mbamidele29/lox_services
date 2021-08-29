import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoxFloatingTextField extends StatelessWidget {
  final String placeholder;
  final TextEditingController controller;
  final List<TextInputFormatter> formatter;
  final TextInputType textInputType;
  
  LoxFloatingTextField({ Key key, @required this.placeholder, @required this.controller, this.formatter, this.textInputType }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF9F9F9),
        border: Border.all(color: Color(0xFFD2D2D2),)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: '$placeholder ',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  color: Color(0xFF2C9AFF),
                ),
                children: [
                  TextSpan(
                    text: '*',
                    style: TextStyle(
                      color: Color(0xFFF54D4D),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2,),
            TextField(
        controller: controller,
        inputFormatters: formatter,
        keyboardType: textInputType,
        decoration: InputDecoration(
          border: InputBorder.none,
          isDense: true,
        )
      ),
          ],
        ),
      ),
    );
  }
}