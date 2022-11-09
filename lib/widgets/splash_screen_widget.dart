import 'package:flutter/material.dart';
import 'package:tour_plan/screen/home.dart';

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({Key? key}) : super(key: key);

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  @override
  Widget build(BuildContext context) {
    double w =MediaQuery.of(context).size.width;
    double h =MediaQuery.of(context).size.height;
    final PageController controller = PageController();
    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children:  <Widget>[
      Container(
        height: h,
        width:w,
        child: Image(
          image: AssetImage("assets/splash_screen/trip.png"),
          fit: BoxFit.cover,
        ),
      ),
        Home(),
      ],
    );
  }
}




///
///
///
///
