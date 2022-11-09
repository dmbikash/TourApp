import 'package:flutter/material.dart';

import '../screen/suggestions.dart';
class RoundedRectangleButton extends StatelessWidget {
  const RoundedRectangleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          Navigator.pushNamed(context, 'Suggestions');
        },
        child: Text("Submit"),
        style: ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
    side: BorderSide(color: Colors.green),

    )
    )
    ),
    );
  }
}
