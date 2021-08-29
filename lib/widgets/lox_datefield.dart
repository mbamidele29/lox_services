import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class LoxDateField extends StatefulWidget {
  final TextEditingController controller;
  

  LoxDateField({ Key key, @required this.controller }) : super(key: key);

  @override
  _LoxDateFieldState createState() => _LoxDateFieldState();
}

class _LoxDateFieldState extends State<LoxDateField> {
  DateTimePickerLocale _locale = DateTimePickerLocale.en_us;

  String _format = 'yyyy-MM-dd';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showDatePicker,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFF9F9F9),
          border: Border.all(color: Color(0xFFD2D2D2),)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Row(
            children: [
              Image.asset(
                'assets/calendar.png',
                height: 30,
                width: 30,
              ),
              SizedBox(width: 20,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Date of Birth',
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
                    TextField(
                      controller: widget.controller,
                      style: TextStyle(
                        color: Color(0xFF404040),
                        fontSize: 14,
                        height: 1.14
                      ),
                      enabled: false,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isDense: true
                      )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDatePicker() {
    DatePicker.showDatePicker(
      context,
      onMonthChangeStartWithFirstDate: true,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('Done',),
      ),
      dateFormat: _format,
      locale: _locale,
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          widget.controller.text=DateFormat(_format).format(dateTime);
        });
      },
    );
  }
}