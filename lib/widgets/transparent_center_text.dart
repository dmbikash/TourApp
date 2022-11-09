import 'package:flutter/material.dart';
class TransparentCenterText extends StatefulWidget {
  const TransparentCenterText({Key? key}) : super(key: key);

  @override
  State<TransparentCenterText> createState() => _TransparentCenterTextState();
}

class _TransparentCenterTextState extends State<TransparentCenterText> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
          color: Colors.transparent,
          child: Text(
              "My Destination",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        )
    );
  }
}
