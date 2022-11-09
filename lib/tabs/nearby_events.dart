import '../widgets/event.dart';

import 'package:flutter/material.dart';

class NearbyEvents extends StatelessWidget {
  const NearbyEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),

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

            Event(),
            Event(),
            Event(),
            Event(),
            
          ],
        ),
      ),
    );
  }
}
