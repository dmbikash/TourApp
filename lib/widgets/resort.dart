import 'package:flutter/material.dart';

class Resort extends StatelessWidget {
  //const Resort({Key? key}) : super(key: key);
  late double w;
  Resort({
    required this.w,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      //resort
             // content list
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
                  image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1540541338287-41700207dee6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                      fit: BoxFit.cover)
              ),

              //child: Text('Header ICon'),
            ),
          ),
          SizedBox(
            height: 30,

            child: RichText(
              text: TextSpan(
                text: '  ',
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(text: 'From', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent,fontSize: 16)),
                  TextSpan(text: ' 8.00 am',style:TextStyle(color: Colors.blue),),
                  TextSpan(text: 'To', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)),
                  TextSpan(text: ' 10.00 pm',style:TextStyle(color: Colors.blue),),

                  TextSpan(text: '                          ', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)),

                  TextSpan(text: '20 Mins', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)),
                  TextSpan(text: ' by Taxi',style:TextStyle(color: Colors.blue),),
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}



