import 'package:flutter/material.dart';

class RoundedForm extends StatelessWidget {
  //const RoundedForm({Key? key}) : super(key: key);
   String hintName;
   IconData icon;

  RoundedForm({
    required this.hintName,
    required this.icon,
   });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50)
      ),
      //color: Colors.white,
      elevation: 2,

      child: TextFormField(
        readOnly: true,
        onTap: (){
          if(hintName!="Volvo") {
            showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2021, 1, 1),
                lastDate: DateTime(2030, 1, 1)
            );
          }
          },

        decoration: InputDecoration(
          suffixIcon: Icon(icon),
          hintText: '$hintName',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),

      ),
    );
  }
}
