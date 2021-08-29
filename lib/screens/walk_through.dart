import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:lox_services/utils/colors.dart';
import 'package:lox_services/utils/routes.dart';
import 'package:lox_services/widgets/lox_button.dart';

class WalkThrough extends StatefulWidget {
  WalkThrough({ Key key }) : super(key: key);

  @override
  _WalkThroughState createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough> {
  final List<String> titles=[
    'LOX\nSERVICES',
    'A DESIGN\nFOR ALL',
    'GET\nINVOLVED',
    'BASIC TASK',
    'INNOVATIVE\nDESIGN',
  ];
  int _current=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(27),
        child: Column(
          children: [
            Expanded(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = ++_current % titles.length;
                    });
                  },
                  scrollDirection: Axis.horizontal,
                ),
                items: titles.map((item) => Center(
                  child: Text(
                    item.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      height: 1.18
                    ),
                  ),
                )).toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: _indicator(),
            ),
            SizedBox(height: 20,),
            LoxButton(
              text: 'SIGN UP',
              color: Colors.black,
              textStyle: whiteButtonTextStyle,
              onTap: ()=>Navigator.pushNamed(context, routeSignup),
            ),
            SizedBox(height: 20,),
            LoxButton(
              text: 'LOG IN',
              color: Colors.white,
              radius: 4,
              borderColor: Color(0xFF0B0B0B),
              textStyle: blackButtonTextStyle,
              onTap: ()=>Navigator.pushNamed(context,  routeSignup, arguments: 'login')
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _indicator(){
    List<Widget> list = [];
    Color color;
    for (int i = 0; i < titles.length; i++) {
      if(i==_current)color=Color(0xFF6375A4);
      else color= Color(0xFFC1C4CD);
      list.add(AnimatedContainer(
        duration: Duration(milliseconds: 250),
        margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
        height: 10,
        width: 10,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );
    }
    return list;
  }
}