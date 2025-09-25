import 'package:demo/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashify/splashify.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class AnimatedSplash extends StatelessWidget {
  const AnimatedSplash ({Key? key }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.black26,
      splash: 'assets/icons/Logo.png',
      nextScreen: FirstPage(),
      splashTransition: SplashTransition.rotationTransition,
      // pageTransitionType: PageTransitionType.scale,
    );
  }
 }