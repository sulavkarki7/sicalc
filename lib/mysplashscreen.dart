import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:splashapp/homepage.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.scale(
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromARGB(255, 31, 113, 214),
          Color.fromARGB(255, 66, 233, 54),
        ],
      ),
      childWidget: SizedBox(
        height: 50,
        child: Image.asset("images/icon.png"),
      ),
      duration: const Duration(milliseconds: 4500),
      animationDuration: const Duration(milliseconds: 3000),
      onAnimationEnd: () => debugPrint("On Scale End"),
      nextScreen: const HomePage(),
    );
  }
}
