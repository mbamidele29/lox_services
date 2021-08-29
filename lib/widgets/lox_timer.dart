import 'package:flutter/material.dart';

class LoxTimer extends StatelessWidget {

  final int seconds;

  const LoxTimer({Key key, @required this.seconds}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double minutes=seconds/60;
    int rem=seconds%60;
    return Row(
      children: [
        Expanded(
          child: _timerCard(minutes.toInt().toString())
        ),
        _separator(),
        Expanded(
          child: _timerCard(rem.toString())
        ),
      ]
    );
  }

  Widget _timerCard(String value){
    if(value.length==1)value='0$value';

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.25),
            offset: Offset(0, 2),
            blurRadius: 8
          )
        ]
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 55),
          child: Text(
            value,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }

  Widget _separator(){
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 24,
            height: 24,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xFFE2574C),
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          Container(
            width: 24,
            height: 24,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xFFE2574C),
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        ],
      ),
    );
  }
}