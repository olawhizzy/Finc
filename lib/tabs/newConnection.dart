import 'dart:ui';

import 'package:finc/constants.dart';
import 'package:finc/widgets/button.dart';
import 'package:flutter/material.dart';
class NewConnection extends StatefulWidget {
  @override
  _NewConnectionState createState() => _NewConnectionState();
}

class _NewConnectionState extends State<NewConnection> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      color: extraLightPrimaryColor,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: extraLightPrimaryColor,
            elevation: 0.0,
            leading: Container(
              margin: EdgeInsets.all(5),
              child: MaterialButton(
                onPressed: () {},
                elevation: 0.0,
                color: lightPrimaryColor,
                textColor: primaryColor,
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 24,
                ),
                //padding: EdgeInsets.all(16),
                shape: CircleBorder(),
              ),
            ),
            actions: [
              Container(
                margin: EdgeInsets.all(5),
                child: MaterialButton(
                  onPressed: () {
                    print('kk');
                  },
                  elevation: 0.0,
                  color: lightPrimaryColor,
                  textColor: primaryColor,
                  child: Icon(
                    Icons.more_horiz,
                    size: 24,
                  ),
                  //padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                ),
              ),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 62, vertical: 20),
                child: Text(
                  'Add new friends to your connection list, using username or phone number',
                  style: black14NormalStyle.copyWith(color: colorGreyBlack,),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 17),
                child: TextField(
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  decoration: InputDecoration(
                    hintText: 'Username or Phone Number',
                    fillColor: lightPrimaryColor,
                    filled: true,
                    suffixIcon: Container(
                      margin: EdgeInsets.all(10),
                      child: CircleAvatar(backgroundImage: AssetImage('images/female.png'),),
                      ),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: primaryColor, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: primaryColor, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 17, vertical: 60),
                child: _buildAddConnection(width,height),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 17, vertical: 90),
                padding: EdgeInsets.symmetric(horizontal: 20,),
                height: 52,
                width: width,
                decoration: shadowStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.celebration),
                        Icon(Icons.celebration),
                        Text(' Refer and Earn '),
                        Icon(Icons.celebration),
                        Icon(Icons.celebration),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios, size: 12,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //add connection btn
  Widget _buildAddConnection(width,height) {
    return raisedButton(
      textColor: Colors.white,
      minWidth: width,
      text: "ADD NEW CONNECTION",
      fontSize: 14,
      //leadingIcon: Icon(Icons.send),
      height: 60.0,
      borderRadius: 10,
      color: primaryColor,
      //borderSideColor: Colors.white,
      splashColor: Colors.blue[200],
      style: TextStyle(
        color: primaryColor,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
      onClick: (){
        _showFullModalUrl(context,height);
      }
    );
  }

  // for url link modal
  _showFullModalUrl(context, height) {
    var width = MediaQuery.of(context).size.width;
    showGeneralDialog(
      context: context,
      barrierDismissible: false, // should dialog be dismissed when tapped outside
      barrierLabel: "Modal", // label for barrier
      transitionDuration: Duration(milliseconds: 500), // how long it takes to popup dialog after button click
      pageBuilder: (_, __, ___) { // your widget implementation
        return SafeArea(
          top: false,
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY: 5.0,
            ),
            child: Scaffold(
              backgroundColor: Colors.white.withOpacity(0.10),
              body: Container(
                //padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: const Color(0xfff8f8f8),
                      width: 1,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          child: Icon(Icons.cancel,size: 40,color: Colors.white,),
                          onTap: () => Navigator.pop(context),
                        )
                      ],
                    ),
                    Container(
                      height: height * 0.8,
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

}
