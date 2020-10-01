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
      body: Column(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 200,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text('Title'),
                  background: Image.network(
                    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverFillRemaining(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'You have pushed the button this many times:',
                      ),
                      Text(
                        'Sliver App Bar'
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Center(
            heightFactor: 20.0,
            widthFactor: 10.0,
            child: Container(
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
          ),
        ],
      ),
      appBar: AppBar(
        title: Text('You tap on camera'),
      ),
    );
  }
}