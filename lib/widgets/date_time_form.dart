import 'package:flutter/material.dart';

class DateTimeForm extends StatelessWidget {
  //const DateTimePicker({Key? key}) : super(key: key);
  late double w;

  DateTimeForm({
    required this.w,
});



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      width: w-10,

      //date time picker
      //color: Colors.grey,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            offset: Offset(-2, 2), // Shadow position
          ),
        ],
      ),

      height: 60,// date input er container
      child: Row(
        children: [

          SizedBox(
            width: w*.20,
            height: 60,
            child: ElevatedButton.icon(

              onPressed:(){},
              icon: Icon(Icons.arrow_left),
              label:Text(""),
            ),
          ),
          // SizedBox(
          //   width: w*.025,
          // ),
          SizedBox(

            width: w*.572,
            height: 36,

            child: TextFormField(
              readOnly: true,
              onTap: (){
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2021, 1, 1),
                    lastDate: DateTime(2030, 1, 1)
                );
              },
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                hintText: "  dd-mm-yyyy",

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),


                ),
              ),
            ),
          ),
          // SizedBox(
          //   width: w*.025,
          // ),
          SizedBox(
            width: w*.20,
            height: 60,
            child: ElevatedButton.icon(
              onPressed:(){},
              icon: Icon(Icons.arrow_right),
              label:Text(""),
            ),

          ),

        ],

      ),


    );
  }
}
