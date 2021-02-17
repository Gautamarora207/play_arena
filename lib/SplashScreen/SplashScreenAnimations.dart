import 'package:flutter/material.dart';

class SplashScreenAnimation {
  AnimationController controller;
  // animation values for different widgets
  Animation<double> blueAnimation;
  Animation<double> orangeAnimation;
  Animation<double> purpleAnimation;
  Animation<double> redAnimation;

  SplashScreenAnimation(this.controller)
      : blueAnimation = Tween(begin: 0.2, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.1, 0.25, curve: Curves.fastLinearToSlowEaseIn),
          ),
        ),
        orangeAnimation = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.3, 0.4, curve: Curves.fastLinearToSlowEaseIn),
          ),
        ),
        purpleAnimation = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.5, 0.6, curve: Curves.fastLinearToSlowEaseIn),
          ),
        ),
        redAnimation = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.6, 0.7, curve: Curves.fastLinearToSlowEaseIn),
          ),
        );

  double getAnimationValue(String color) {
    switch (color) {
      case 'blue':
        {
          return blueAnimation.value;
        }
        break;

      case 'red':
        {
          return redAnimation.value;
        }
        break;

      case 'purple':
        {
          return purpleAnimation.value;
        }
        break;

      case 'orange':
        {
          return orangeAnimation.value;
        }
        break;

      default:
        {
          return blueAnimation.value;
        }
        break;
    }
  }
}
