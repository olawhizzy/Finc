import 'package:finc/constants.dart';
import 'package:flutter/material.dart';
class TimelinePage extends StatefulWidget {
  @override
  _TimelinePageState createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: extraLightPrimaryColor,
      child: ListView(
        children: [
          _buildRequestConnection(),
        ],
      ),
    );
  }

  //For connection requrest
  _buildRequestConnection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
    );
  }
}
