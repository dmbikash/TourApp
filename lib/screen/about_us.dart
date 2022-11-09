import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      toolbarHeight: 75,
        title: Text("About Us",style: TextStyle(fontSize: 25,color: Colors.white),),
        centerTitle: true,
        elevation: 5,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20,right: 20, top: 5),
            height: 300,

            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage("assets/logo/aboutus.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("TRIP",
              style: TextStyle(
                fontSize: 25,
                color: Colors.green,
                fontWeight: FontWeight.bold,
                letterSpacing: 5,
              ),),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Card(
              margin: EdgeInsets.only(top: 10,left: 20,right: 20),

              child: Text("Trip is the world’s first Adventure Booking Platform, where you can effortlessly book private, group, and tailor-made multi-day organized adventures from 160+ countries around the world.Traditionally, booking an organized tour was a tedious and time-consuming process. Where will I stay? What activities will I do? What meals am I going to have? What operator can I trust? TourRadar makes booking multi-day tours seamless and timely, partnering with 2,500+ operators to offer more than 50,000+ adventures in 160+ countries. Founded in 2010, TourRadar was the first to transition multi-day tours to an online marketplace, making them the leader in the industry. In 2021, TourRadar further revolutionized the industry by introducing the Adventure Booking Platform, connecting travelers, operators, and travel advisors to organized adventures through one platform. ",
              textAlign: TextAlign.justify,
                style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
              ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
