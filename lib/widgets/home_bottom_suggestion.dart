import 'package:flutter/material.dart';

class HomeBottomSuggestion extends StatelessWidget {

  const HomeBottomSuggestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = 500;
    return Container(
      width: 120,
      height: 90,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.red,
        image: DecorationImage(
          
          image: NetworkImage(
              "https://images.pexels.com/photos/6271725/pexels-photo-6271725.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
          ),
          fit: BoxFit.cover,

        ),
      ),

    );
  }
}
