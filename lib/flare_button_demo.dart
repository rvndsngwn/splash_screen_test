import 'package:flutter/material.dart';
import 'package:smart_flare/smart_flare.dart';
import 'package:splashscreentest/camera_tap.dart';

class FlareDemo extends StatefulWidget {
  @override
  _FlareDemoState createState() => _FlareDemoState();
}

class _FlareDemoState extends State<FlareDemo> {
  @override
  Widget build(BuildContext context) {
    var animationWidth = 215.0;
    var animationHeight = 211.0;
    var animationWidthThirds = animationWidth / 3;
    var halfAnimationHeight =animationHeight / 2;

    var activeAreas = [

      ActiveArea(
          area: Rect.fromLTWH(
              animationWidthThirds *0.5 , 40,
              animationWidthThirds/1.6,
              halfAnimationHeight/2),
          debugArea: false,
          guardComingFrom: ['deactivate'],
          animationName: 'camera_tapped',onAreaTapped: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CameraTap()));
      }),

      ActiveArea(
          area: Rect.fromLTWH(
              animationWidthThirds *1.2 , 40,
              animationWidthThirds/1.5,
              halfAnimationHeight/2),
          debugArea: false,
          guardComingFrom: ['deactivate'],
          animationName: 'pulse_tapped',

      ),

      ActiveArea(
          area: Rect.fromLTWH(
              animationWidthThirds * 2, 40,
              animationWidthThirds/2,
              halfAnimationHeight/2),
          debugArea: false,
          guardComingFrom: ['deactivate'],
          animationName: 'image_tapped'),

      ActiveArea(
          area: Rect.fromLTWH(
              75,
              animationHeight/2,
              animationWidth/3,
              animationHeight/2.5),
          debugArea:false,
          animationsToCycle: ['activate', 'deactivate'],
          onAreaTapped: () {
            print('Button tapped!');
          })
    ];


    return Scaffold(
        backgroundColor: Color.fromARGB(255, 102, 18, 222),
        body: Align(
            alignment: Alignment.bottomCenter,
            child: SmartFlareActor(
              width: animationWidth,
              height: animationHeight,
              filename: 'assets/flr_files/MultiOptionButton.flr',
              startingAnimation: 'deactivate',
              activeAreas: activeAreas,
            )));
  }
}