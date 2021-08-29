import 'package:flutter/material.dart';

class LoxDropDown extends StatelessWidget {

  final String selected;
  final List<String> items;

  final Function onChange;

  const LoxDropDown({Key key, @required this.selected, @required this.items, @required this.onChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF9F9F9),
        border: Border.all(color: Color(0xFFD2D2D2),)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: 'Time Estimate',
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
            SizedBox(height: 2,),
            DropdownButton(
              value: selected!=null && selected.isNotEmpty ? selected : null,
              hint: Text(
                'Select an option',
                style: TextStyle(
                  color: Color(0xFF404040),
                  fontSize: 13,
                ),
              ),
              isExpanded: true,
              isDense: true,
              underline: Container(),
              dropdownColor: Colors.white,
              items: [
                for(String item in items)
                  DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: TextStyle(
                         color: Color(0xFF404040),
                        fontSize: 13,
                      ),
                    ),
                  ),
              ],
              onChanged: (item) {
                onChange(item);
              }),
          ],
        ),
      ),
    );
  }
}