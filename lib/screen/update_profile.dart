import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../widgets/custom_normal_text_form.dart';
import '../widgets/rounded_rectangle_button.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [


          Container(
            padding: EdgeInsets.only(top: 10,bottom: 5),
            color: Colors.green,
            child:CircleAvatar(
              backgroundColor: Colors.black,
              backgroundImage: NetworkImage('https://images.pexels.com/photos/2091399/pexels-photo-2091399.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              radius: 130,
            ) ,
          ),
          Container(
            height:100,
            width: MediaQuery.of(context).size.width,
            color: Colors.green,
            child: Column(

              children: [
                SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('SK KHAN',style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  )
                  ],
                ),
                SizedBox(height: 8,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('SK@intellier.com',style: TextStyle(
                      fontSize:18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                  ),
                  )
                  ],
                ),

              ],
            ),
          ),
          CustomNormalTextForm(hintName: "John Snow",),
          CustomNormalTextForm(hintName: "J.Snowc@intellier.com",),
          CustomNormalTextForm(hintName: "New Password",),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RoundedRectangleButton(),
          )

        ],
      ),
    );
  }
}
