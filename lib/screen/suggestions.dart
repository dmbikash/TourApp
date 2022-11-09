import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:tour_plan/tab.dart';
import 'package:tour_plan/tabs/nearby_events.dart';
import 'package:tour_plan/tabs/restaurant_suggestions.dart';
import 'package:tour_plan/tabs/travel_suggestions.dart';

class Suggestions extends StatefulWidget {
  const Suggestions({Key? key}) : super(key: key);

  @override
  State<Suggestions> createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions>  with TickerProviderStateMixin{




  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(

          centerTitle: true,
          title: Text(
            "Your Trip Your Plan",
            style: TextStyle(color:Colors.white),
          ),elevation: 0,

        ),
        drawer: buildDrawer(context),
      body: Column(
        children: [
          Container(
            color: Colors.lightGreen,
            child: TabBar(
              //controller: _controller,
              labelColor:Colors.white ,
              indicatorColor: Colors.yellow,
              labelPadding: EdgeInsets.all(2),
                tabs: [
                  Tab(
                    //icon: Icon(Icons.home),
                    child: Text("Travel\nSuggestions",
                    textAlign: TextAlign.center,),
                  ),
                  Tab(
                    //icon: Icon(Icons.home),
                    child: Text("Nearby Restaurants",textAlign: TextAlign.center,),
                  ),
                  Tab(
                    //icon: Icon(Icons.home),
                    child: Text("Nearby\nHotels",textAlign: TextAlign.center,),
                  ),
                  Tab(
                    //icon: Icon(Icons.home),
                    child: Text("Nearby\nEvents",textAlign: TextAlign.center,),
                  ),
                 // Text("eije"),

                ],
            ),
          ),
          Expanded(
            child: TabBarView(
                children:[
                  TravelSuggestionsPage(),
                  //MyTab(),
                  // Container(
                  //   child: Text('Travel Suggestion'),
                  // ),
                  RestaurantSuggestions(),



                  Container(
                    child: Text('Nearbt hotels'),
                  ),
                  NearbyEvents(),

                ],

            ),
          ),
        ],
      ),
      ),
    );
  }

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 270,
              child:  DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.lightGreenAccent,
                ),
                child: Column(

                  children:[

                    Row(
                      children: [
                        CircleAvatar(
                          radius:80,
                          backgroundImage:
                          NetworkImage('http://t0.gstatic.com/licensed-image?q=tbn:ANd9GcTK7Os2YW_6OfJJGh9rvPUSbNYqUwQXZce6mMIrqMasLen8sg4BDbHwN-UMOAV6Q_lXdvqdhbY-NqCTcGA'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("SK KHAN"),
                      ],
                    ),
                    Row(
                      children: [
                        Text("SK@intellier.com"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: const Text('Update Profile'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pushNamed(context,'UpdateProfile');
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: const Text('Tell a Friend'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outlined),
              title: const Text('About Us'),
              onTap: () {
                Navigator.pushNamed(context, 'AboutUs');
                // Update the state of the app
                // ...
                // Then close the drawer

              },
            ),ListTile(
              leading: Icon(Icons.chrome_reader_mode_outlined),
              title: const Text('Terms and Condition'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip_outlined),
              title: const Text('Privacy Policy'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),ListTile(
              leading: Icon(Icons.logout_outlined),
              title: const Text('Logout'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
  }
}
