import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoxTextField extends StatelessWidget {
  final String placeholder;
  final TextEditingController controller;
  final List<TextInputFormatter> formatter;
  final TextInputType textInputType;
  
  LoxTextField({ Key key, @required this.placeholder, @required this.controller, this.formatter, this.textInputType }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      inputFormatters: formatter,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: placeholder,
        hintStyle: TextStyle(
          color: Color(0xFFA1ABB2),
          fontWeight: FontWeight.bold,
          fontSize: 14,
          height: 1.14
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF8B999F)),
        )
      ),
    );
  }
}