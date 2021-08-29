import 'package:flutter/material.dart';
import 'package:lox_services/utils/routes.dart';

class LoxMenu extends StatelessWidget {
  final Function close;
  const LoxMenu({ Key key, this.close }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      height: size.height,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: close,
              child: Image.asset(
                'assets/cancel.png',
                width: 20,
                height: 20,
              ),
            ),
            SizedBox(height: 70,),
            _menuItem(
              'Edit profile', 
              ()=>Navigator.of(context).pushNamed(routeProfile)
            ),
            _menuItem(
              'Home', 
              ()=>Navigator.of(context).pushReplacementNamed(routeHome)
            ),
            _menuItem(
              'Check location', 
              ()=>Navigator.of(context).pushNamed(routeLocation)
            ),
            Expanded(child: SizedBox.shrink()),
            GestureDetector(
              onTap: ()=>Navigator.of(context).pushNamedAndRemoveUntil(routeInit, (route) => false),
              child: Text(
                'Sign Out',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: Color(0xFFF93C26),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuItem(String text, Function onTap){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 21),
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 22,
            color: Color(0xFF404040),
          )
        ),
      ),
    );
  }
}