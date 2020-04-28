import 'package:flutter/material.dart';
import 'package:smart_flare/smart_flare.dart';

class CameraTap extends StatefulWidget {
  @override
  _CameraTapState createState() => _CameraTapState();
}

class _CameraTapState extends State<CameraTap> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: Container(
        child: Align(
          alignment: Alignment.centerRight,
          child: PanFlareActor(
            width: 135.0,
            height: screenSize.height,
            filename: 'assets/flr_files/slideoutMenu.flr',
            openAnimation: 'open',
            closeAnimation: 'close',
            direction: ActorAdvancingDirection.RightToLeft,
            threshold: 20.0,
            reverseOnRelease:
            true, // reverse's current animation when released and threshold not reaced
            completeOnThresholdReached:
            true, // plays the animation till the end when we reach threshold
            activeAreas: [
              RelativePanArea(
                  area: Rect.fromLTWH(0, 0.7, 1.0, 0.3), debugArea: false)
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('You tap on camera'),
      ),
    );
  }
}