import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:finc/constants.dart';
import 'package:finc/tabs/newConnection.dart';
import 'package:flutter/material.dart';
import 'myProfile.dart';
class Connections extends StatefulWidget {
  @override
  _ConnectionsState createState() => _ConnectionsState();
}

class _ConnectionsState extends State<Connections> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: extraLightPrimaryColor,
        child: Column(
          children: [
            _buildFirstRow(),
            _buildMessagerow(),
            _buildNewMessages(),
          ],
        ),
      ),
    );
  }

  //First Scroll
  _buildFirstRow(){
    return Container(
      height: 120,
      padding: EdgeInsets.all(20),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildAddNewBtn(),
          _buildRequestBtn(),
          _buildRequestBtn(),
          _buildRequestBtn(),
          _buildRequestBtn(),
          _buildMoreRequest(),
        ],
      ),
    );
  }
  //Add new button
  _buildAddNewBtn(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 85,
      width: 95,
      decoration: shadowStyle.copyWith(color: colorWhite),
      child: InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => NewConnection())),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_circle_outline_rounded,size: 26,color: primaryColor,),
            Text('Add New', style: black14NormalStyle.copyWith(color: primaryColor),)
          ],
        ),
      ),
    );
  }

  //resques button
  _buildRequestBtn(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 85,
      width: 135,
      decoration: shadowStyle.copyWith(color: colorWhite),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Container(
                height: 26,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/female.png'),
                ),
              ),
              Column(
                children: [
                  Text('Ridwan Olumide',style: black12NormalStyle.copyWith(fontSize: 11),),
                  Text('@oluzzyreed',style: black12NormalStyle.copyWith(fontSize: 9,color: colorGreyBlack),),
                ],
              )
            ],
          ),
          heightSizeBox10,
          Container(
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
            ),
            child: Row(
              children: [
                Container(
                  width: 67,
                  height: 30,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: lightPrimaryColor,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(0),bottomLeft: Radius.circular(10))
                  ),
                  child: InkWell(
                    onTap: null,
                    child: Text('Send',textAlign: TextAlign.center,style: TextStyle(color: primaryColor),),
                  ),
                ),
                Container(
                  width: 67,
                  height: 30,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(0))
                  ),
                  child: InkWell(
                    onTap: () => print('request'),
                    child: Text('Request',textAlign: TextAlign.center,style: TextStyle(color: colorWhite,fontSize: 12),),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //More Request
  _buildMoreRequest(){
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        //padding: EdgeInsets.symmetric(horizontal: 40),
        height: 85,
        width: 135,
        decoration: shadowStyle.copyWith(color: colorWhite),
      child: Center(
        child: RowSuper(
          children: [
            Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorWhite
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/female.png'),
                radius: 20,
                backgroundColor: colorWhite,
              ),
            ),
            Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorWhite
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/female.png'),
                radius: 20,
                backgroundColor: colorWhite,
              ),
            ),
            Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorWhite
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/female.png'),
                radius: 20,
                backgroundColor: colorWhite,
                child: Text('+20',style: black14NormalStyle.copyWith(color: colorWhite,fontWeight: FontWeight.bold),),
              ),
            ),
          ],
          innerDistance: -15.0,
        ),
      ),
    );
  }

  //Messagerow
  _buildMessagerow() {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      width: width,
      decoration: BoxDecoration(
        color: colorWhite,
        border: Border.symmetric(horizontal: BorderSide(color: colorGreyBlack,width: 0.5))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Messages',
            style: black18NormalStyle,
          ),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primaryColor
            ),
            child: Center(child: Text('12',style: black12NormalStyle.copyWith(color: colorWhite,fontWeight: FontWeight.bold),)),
          )
        ],
      ),
    );
  }

  //New Messages
  _buildNewMessages() {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: width,
      child: Column(
        children: [
          heightSizeBox20,
          _filterbox(),
          heightSizeBox20,
          _newmsgBtn(),
          heightSizeBox10,
          _messageList(),
        ],
      ),
    );
  }
  //filter box
  _filterbox(){
    return Container(
      padding: EdgeInsets.all(12),
      height: 50,
      decoration: shadowStyle,
      child: TextField(
//    ...,other fields
        decoration: InputDecoration(
          prefixIcon:Icon(Icons.search, color: primaryColor,),
          border: InputBorder.none,
          suffixIcon: Container(
            width: 73,
            child: FlatButton(
              child: Row(
                children: [
                  Text(
                    "Filter",
                    style: TextStyle(fontSize: 11.0, fontFamily: "Raleway"),
                  ),
                  Icon(Icons.filter_list_alt, size: 14,),
                ],
              ),
              onPressed: () {},
              textColor: primaryColor,
              color: lightPrimaryColor,
              shape: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                borderSide: BorderSide.none
              ),

            ),
          ),
        ),
      ),
    );
  }

  //new mesg button
  _newmsgBtn(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 125,
          child: FlatButton(
            child: Row(
              children: [
                Text(
                  "New Message",
                  style: TextStyle(fontSize: 12.0, fontFamily: "Raleway"),
                ),
                Icon(Icons.add, size: 14,),
              ],
            ),
            onPressed: () {},
            textColor: primaryColor,
            color: lightPrimaryColor,
            shape: OutlineInputBorder(
                borderRadius: new BorderRadius.circular(5.0),
                borderSide: BorderSide.none
            ),

          ),
        )
      ],
    );
  }

  //Message list
  _messageList(){
    return Column(
      children: [
        _msgType1(),
        _msgType2(),
      ],
    );
  }
  //message type 1
  _msgType1(){
    return Container(
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
                color: colorGreyBlack,
                width: 0.5
            )
        )
      ),
      child: ListTile(
        leading: Container(
          child: Stack(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/female.png'),
              ),
              Positioned(
                child: Container(
                    child: CircleAvatar(backgroundColor: Colors.green,),
                  height: 12,
                  width: 12,
                ),
                bottom: 0.0,
                right: -0.0,
              )
            ],
          ),
        ),
        title: Text('Ezra Bankly',style: black14NormalStyle.copyWith(fontWeight: FontWeight.w500),),
        subtitle: Text('Hello there! You surmoned me, let’s get the...',style: black14NormalStyle.copyWith(fontWeight: FontWeight.w500,fontSize: 10,color: colorGreyBlack),),
        trailing: Text('12:09am',style: black14NormalStyle.copyWith(fontWeight: FontWeight.w500,fontSize: 10,color: colorGreyBlack),),
      ),
    );
  }
  //message type 2
  _msgType2(){
    return Container(
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
                color: colorGreyBlack,
                width: 0.5
            )
        )
      ),
      child: ListTile(
        leading: Container(
          child: Stack(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/female.png'),
              ),
              Positioned(
                child: Container(
                  child: CircleAvatar(backgroundColor: Colors.green,),
                  height: 12,
                  width: 12,
                ),
                bottom: 0.0,
                right: -0.0,
              )
            ],
          ),
        ),
        title: Text('Ezra Bankly',style: black14NormalStyle.copyWith(fontWeight: FontWeight.w500),),
        subtitle: Text('Howfa, send my money nau.',style: black14NormalStyle.copyWith(fontWeight: FontWeight.bold,fontSize: 10,color: primaryColor),),
        trailing: Text('12:09am',style: black14NormalStyle.copyWith(fontWeight: FontWeight.w500,fontSize: 10,color: colorGreyBlack),),
      ),
    );
  }
}
