import 'package:flutter/material.dart';

import '../widgets/date_time_form.dart';
import '../widgets/resort.dart';

class TravelSuggestionsPage extends StatefulWidget {
  const TravelSuggestionsPage({Key? key}) : super(key: key);

  @override
  State<TravelSuggestionsPage> createState() => _TravelSuggestionsPageState();
}

class _TravelSuggestionsPageState extends State<TravelSuggestionsPage> {
  @override
  Widget build(BuildContext context) {
    double w= MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          DateTimeForm(w: w,) ,
          SizedBox(
            height: 20,
          ),


          //Container(color: Colors.red,height:200),
          //Container(color: Colors.green,height: 200,),
          //Container(color: Colors.red,height:200),
          //Container(color: Colors.green,height: 200,),
          Container(
            margin: EdgeInsets.all(10),
            height: 500,
            child: ListView(
              children: [
                Resort(w:w),
                Resort(w:w),
                Resort(w:w),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
