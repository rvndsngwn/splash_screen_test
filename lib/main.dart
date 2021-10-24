import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreentest/flare_button_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue.shade200,
      ),
      home: MySplashScreen(),
    );
  }
}

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 5)).then((_) => setState(() {
      _isLoading = false;
    }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen.navigate(
      name: 'assets/flr_files/intro.flr',
      next: (context) => FlareDemo(),
      isLoading: _isLoading,
      startAnimation: 'happy coding',
      backgroundColor: Colors.green.shade300,
    );
  }
}
