import 'package:flutter/material.dart';

class LoxButton extends StatelessWidget {
  final String text;
  final Color color, borderColor;
  final TextStyle textStyle;
  final double radius;
  final bool showShadow;
  final Function onTap;
  const LoxButton({Key key, @required this.text, @required this.color, @required this.textStyle, this.borderColor, this.radius, @required this.onTap, this.showShadow=true }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<BoxShadow> boxShadow=[];
    if(showShadow){
      boxShadow.add(
        BoxShadow(
          color: Colors.black.withOpacity(.25),
          offset: Offset(0, 4),
          blurRadius: 15
        )
      );
    }
    return InkWell(
      key: Key(text),
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          boxShadow: boxShadow,
          border: Border.all(color: borderColor ?? color),
          borderRadius: BorderRadius.circular(radius ?? 7),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            text.toUpperCase(),
            textAlign: TextAlign.center,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}