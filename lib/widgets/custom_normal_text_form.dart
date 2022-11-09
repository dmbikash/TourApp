import 'package:flutter/material.dart';

class CustomNormalTextForm extends StatelessWidget {
  //const CustomNormalTextForm({Key? key}) : super(key: key);

  late String hintName;

  CustomNormalTextForm({
    required this.hintName,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25,right: 25,top: 10),

      //color: Colors.red,
      child:SizedBox(
        height:40,
        width:  MediaQuery.of(context).size.width,
        child: TextFormField(
          decoration: InputDecoration(
            labelStyle: TextStyle(
              color: Colors.grey[400],
            ),

            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
            hintText: '$hintName' ,
          ),
        ),
      ),
    );
  }
}
