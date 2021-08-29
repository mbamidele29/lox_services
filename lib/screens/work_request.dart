import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lox_services/utils/routes.dart';
import 'package:lox_services/widgets/lox_timer.dart';

class WorkRequestScreen extends StatefulWidget {
  WorkRequestScreen({ Key key }) : super(key: key);

  @override
  _WorkRequestScreenState createState() => _WorkRequestScreenState();
}

class _WorkRequestScreenState extends State<WorkRequestScreen> {

  int seconds=0;
  int amount=0;
  Timer _timer;
  @override
  Widget build(BuildContext context) {
    if(_timer==null && seconds<3){
      _timer=Timer.periodic(Duration(seconds: 1), (timer) {
          if(seconds>=3){
            _timer.cancel();
            Navigator.of(context).pushNamed(routeConfirmEnd);
          }else{
            setState(() {
              seconds++;
              amount=seconds*1000;
            });
          }
        }
      );
    }
    return Scaffold(
      body: Padding(
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: LoxTimer(
                        seconds: seconds
                      ),
                    ),
                    SizedBox(height: 54),
                    Container(
                      color: Color.fromRGBO(196, 196, 196, .16),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Amount',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF1C1C1C),
                              ),
                            ),
                            Text(
                              'N$amount',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF27AC60),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
    void dispose() {
      _timer.cancel();
      super.dispose();
    }
}