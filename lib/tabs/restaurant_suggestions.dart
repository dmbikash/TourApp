import 'package:flutter/material.dart';
import 'package:tour_plan/widgets/restaurant_bottom_suggestion.dart';

class RestaurantSuggestions extends StatelessWidget {
  const RestaurantSuggestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.all(10),
        color: Colors.white,
        //height: 50,
        //width:50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            TextFormField(

              decoration: InputDecoration(
                hintText: "Search" ,
                suffixIcon: Icon(Icons.search_outlined),
                enabledBorder: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(30),
                ),
              ),

            ),
            SizedBox(
              height: 20,
            ),
            Container(

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset(-2, 2), // Shadow position
                  ),
                ],
              ),

              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    height: 200,
                    child: Container(
                      //color: Colors.blue,
                      height:200,
                      width: w,
                      alignment:Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2014/09/17/20/26/restaurant-449952_960_720.jpg"),
                              fit: BoxFit.cover)
                      ),

                      //child: Text('Header ICon'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left:10,right: 10,top: 5),
                    child: Row(
                      children: [
                        Text("Bhai Bhai Hotel",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(
                          width: 90,
                        ),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),


                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left:10,right: 10),
                    width: w,
                    child: Text("Ekhane unoto maner hash murgi goru khashi er biriyani apowa jay"
                        "proti mahs er  5 tarikhe asto khashir kachhi paowa jay"
                        "shundor o monorom poribesh e khabar poribeshon kora hoy",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text("Also Popular Restaurant",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),

            Row(
              children: [
                RestaurantBottomSuggestion(),
                SizedBox(width: 5,),
                RestaurantBottomSuggestion(),
                SizedBox(width: 5,),
                RestaurantBottomSuggestion(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
