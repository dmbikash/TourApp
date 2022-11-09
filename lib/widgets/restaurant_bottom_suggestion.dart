import 'package:flutter/material.dart';

class RestaurantBottomSuggestion extends StatelessWidget {

  const RestaurantBottomSuggestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = 500;
    return Container(
      width: 120,
      height: 70,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.red,
        image: DecorationImage(
          
          image: NetworkImage(
              "https://cdn.pixabay.com/photo/2015/08/20/20/07/cereal-898073_960_720.jpg"
          ),
          fit: BoxFit.cover,

        ),
      ),

    );
  }
}
