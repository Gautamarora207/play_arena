import 'package:flutter/material.dart';
import 'package:flutter_assignment/SplashScreen/SplashScreenAnimations.dart';
import 'package:flutter_assignment/ListPage/ListPage.dart';
import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/services/HomePageService.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  SplashScreenAnimation animation;
  List playArenas;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    controller.addListener(() {
      setState(() {});
    });
    controller.forward();

    animation = SplashScreenAnimation(controller);

    fetchPlayArenas(); // calling the function to fetch list from api.

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ListPage(playArenas),
          ));
    }); // delaying the navigation to give time for animation to complete
  }

  void fetchPlayArenas() async {
    playArenas = await HomePageService()
        .fetchList(); // calling the service for fetching list
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      child: Center(
        child: Container(
          height: 200,
          width: 200,
          color: white,
          child: Stack(
            children: [
              Align(alignment: Alignment.bottomLeft, child: buildImage('blue')),
              Align(alignment: Alignment.topLeft, child: buildImage('orange')),
              Align(
                  alignment: Alignment.bottomRight,
                  child: buildImage('purple')),
              Align(alignment: Alignment.topRight, child: buildImage('red')),
              Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/white_logo.png',
                    height: 150,
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImage(String color) {
    double animationValue = animation.getAnimationValue(color);
    return Transform(
      transform: Matrix4.diagonal3Values(animationValue, animationValue, 0),
      child: Image.asset(
        'assets/$color.png',
        height: 150,
      ),
    );
  }
}
