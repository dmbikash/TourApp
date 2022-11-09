import 'package:flutter/material.dart';

class Event extends StatelessWidget {
  //const Resort({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double w =  MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(5),
      child: Row(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  //color: Colors.blue,
                  height:180,
                  width: 180,
                  alignment:Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1583906326458-5eb89bf0f911?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                          fit: BoxFit.cover)
                  ),
                  child: Text("aaa"),

                  //child: Text('Header ICon'),
                ),
                Text("10pm           6-11-2022"),
              ],
            ),
          ),
          SizedBox(width: 10,),
          Container(
            child: Column(
              children: [
                Container(
                  //color: Colors.blue,
                  height:180,
                  width: 180,
                  alignment:Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                          fit: BoxFit.cover)
                  ),
                  child: Text("aaa"),

                  //child: Text('Header ICon'),
                ),
                Text("10 am           7-11-2022"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



