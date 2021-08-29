import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoxNoLabelTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final List<TextInputFormatter> formatter;
  final TextInputType textInputType;
  
  LoxNoLabelTextField({ Key key, @required this.controller, this.formatter, this.textInputType, this.label }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: label,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13,
              color: Color(0xFF737373),
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
        SizedBox(height: 10,),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFF9F9F9),
            border: Border.all(color: Color(0xFFD2D2D2),)
          ),
          child: TextField(
            controller: controller,
            inputFormatters: formatter,
            keyboardType: textInputType,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFD9D9D9),
              fontSize: 14,
              height: 1.14
            ),
            decoration: InputDecoration(
              labelStyle: TextStyle(
                color: Color(0xFF2C9AFF),
                fontWeight: FontWeight.bold,
                fontSize: 14,
                height: 1.14
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
              border: InputBorder.none,
            )
          ),
        ),
      ],
    );
  }
}