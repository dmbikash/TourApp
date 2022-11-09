import 'package:flutter/material.dart';

class DateTimeWidget extends StatefulWidget {

  @override
  State<DateTimeWidget> createState() => _DateTimeWidgetState();
}

class _DateTimeWidgetState extends State<DateTimeWidget> {

  DateTime _dateTime = DateTime.now();


  void _showDatePicker(){
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021,1,1),
        lastDate: DateTime(2030,1,1),
    );
  }

 // const DateTimeWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      ElevatedButton(
        onPressed: () {
          showDatePicker(context: context, initialDate:  DateTime.now(), firstDate: DateTime(2021,1,1), lastDate: DateTime(2030,1,1));
          _showDatePicker ;
          print(_dateTime);
          },
        child: Center(
          child: Text("tap me"),
        ),
      )
    ;
  }
}
