import 'package:flutter/material.dart';

class LoxAddCard extends StatelessWidget {
  
  LoxAddCard({ Key key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF9F9F9),
        border: Border.all(color: Color(0xFFD2D2D2),)
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Image.asset(
              'assets/card.png',
              width: 20,
              height: 16,
            ),
            SizedBox(width: 13,),
            Expanded(
              child: Text(
                'Add Debit/Credit Card',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black
                ),
              ),
            ),
            Image.asset(
              'assets/add.png',
              width: 20,
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}