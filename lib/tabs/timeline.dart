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
          heightSizeBox20,
          _buildRequestConnection(),
          _buildAirtimeBuy(),
          _buildRequestConnection(),
          _buildAirtimeBuy(),
          _buildRequestConnection(),
          _buildAirtimeBuy(),
          _buildRequestConnection(),
          _buildAirtimeBuy(),

        ],
      ),
    );
  }

  //For connection requrest
  _buildRequestConnection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 5),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: colorWhite,
        boxShadow: [
          BoxShadow(
            color: lightPrimaryColor,
            blurRadius: 5.0, // soften the shadow
            spreadRadius: 1.0, //extend the shadow
            offset: Offset(
              0.0, // Move to right 10  horizontally
              0.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/female.png'),
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'You sent ',
              style: DefaultTextStyle.of(context).style,
              children: const <TextSpan>[
                TextSpan(text: '@Queenentte09', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' a'),
                TextSpan(text: '\nconnection request!'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //For mtn purchase
  _buildAirtimeBuy() {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
      padding: EdgeInsets.only(left: 30.0,right: 5, top: 20),
      height: 139,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: colorWhite,
        boxShadow: [
          BoxShadow(
            color: lightPrimaryColor,
            blurRadius: 5.0, // soften the shadow
            spreadRadius: 1.0, //extend the shadow
            offset: Offset(
              0.0, // Move to right 10  horizontally
              0.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/female.png'),
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'You ',
                  style: black14NormalStyle.copyWith(fontWeight: FontWeight.bold),
                  children: const <TextSpan>[
                    TextSpan(text: 'Sent Mtn airtime', style: TextStyle(fontWeight: FontWeight.normal)),
                    TextSpan(text: '\n07010012998', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: '\n \nPaddi enjoy yourself, wahala no dey finish o.', style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12)),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.arrow_forward_ios,size: 10,)
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                //width: width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('23mins ago',style: grey14NormalStyle.copyWith(fontSize: 10),),
                    SizedBox(width: 20,),
                    Text('05 Jun',style: grey14NormalStyle.copyWith(fontSize: 10),),
                  ],
                ),
              ),
              Container(
                //width: width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.messenger_outline, color: colorBlack,size: 18,),
                    SizedBox(width: 20,),
                    Text('12 comments',style: grey14NormalStyle.copyWith(fontSize: 10),),
                  ],
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}
