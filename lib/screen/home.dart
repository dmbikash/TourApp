import 'package:flutter/material.dart';

import '../widgets/home_bottom_suggestion.dart';
import '../widgets/restaurant_bottom_suggestion.dart';
import '../widgets/rounded_form.dart';
import '../widgets/rounded_rectangle_button.dart';
import '../widgets/transparent_center_text.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // The containers in the background
        new Column(
          children: <Widget>[
            new Container(
              height: MediaQuery.of(context).size.height * .55,
              color: Colors.blue,
              child: Image(
                image: NetworkImage("https://images.pexels.com/photos/2161449/pexels-photo-2161449.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
                ,
                fit: BoxFit.cover,

              ),
            ),
            new Container(
              padding: EdgeInsets.all(5),
              height: MediaQuery.of(context).size.height * .45,
             // color: Colors.green,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 150,),
                 Row(children: [

                     Card(
                     child: Text("You May Also Like",style:
                     TextStyle(fontSize: 25,color: Colors.grey[600]),
                     )
                     )

                 ],
                 ),
              SizedBox(height: 20,),
                  Row(
                    children: [
                      HomeBottomSuggestion(),
                      SizedBox(width: 10,),
                      HomeBottomSuggestion(),
                      SizedBox(width: 10,),
                      HomeBottomSuggestion(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        // The card widget with top padding,
        // incase if you wanted bottom padding to work,
        // set the `alignment` of container to Alignment.bottomCenter
        new Container(
          color: Colors.transparent,
          // invisible container-=-er vitor form ase
          alignment: Alignment.topCenter,
          padding: new EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .20,
              right: 30.0,
              left: 30.0),
          child: new Container(
            decoration: BoxDecoration(
              //color: Colors.red,
              borderRadius: BorderRadius.circular(10)
            ),
            
            //form
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
               //TextField(),
                TransparentCenterText(),
                SizedBox(
                  height: 80,
                ),
                RoundedForm(hintName: "Maldives",icon: Icons.arrow_downward,),
                RoundedForm(hintName:"Start Date", icon: Icons.calendar_month,),
                RoundedForm(hintName: "End Date",icon: Icons.calendar_month,),
                SizedBox(height: 10,),
                Container(width:MediaQuery.of(context).size.width-80.0 ,height: 50, child: RoundedRectangleButton()),




              ],
            ),
          ),
        )
      ],
    );
  }
}
