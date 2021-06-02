import 'package:finc/constants.dart';
import 'package:finc/sizeConfig.dart';
import 'package:finc/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:popup_menu/popup_menu.dart';
class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    PopupMenu.context = context;
    return Container(
      color: extraLightPrimaryColor,
      child: SafeArea(
        child: Scaffold(
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
                    _buildPopUp();
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
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(20),
              color: extraLightPrimaryColor,
              child: Column(
                children: [
                  _filterbox(),
                  //resquest list
                  Column(
                    children: [
                      _buildRequest(),
                      _buildRequest(),
                      _buildRequest(),
                      _buildRequest(),
                      _buildRequest(),
                      _buildRequest(),
                      _buildRequest(),
                      _buildRequest(),
                      _buildRequest(),
                      _buildRequest(),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //filter box
  _filterbox(){
    return Container(
      height: 50,
      decoration: shadowStyle,
      child: TextField(
//    ...,other fields
        decoration: InputDecoration(
          prefixIcon:Icon(Icons.search, color: primaryColor,),
          border: InputBorder.none,
        ),
      ),
    );
  }

  //request
  _buildRequest(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      height: 75,
      width: SizeConfig.screenWidth,
      color: colorWhite,
      child: ListTile(
        leading: CircleAvatar(backgroundImage: AssetImage('images/female.png'),),
        title: Text('Audrey Chisom',style: black14NormalStyle.copyWith(fontWeight: FontWeight.w500,fontSize: 12),),
        subtitle: Text('@audreyfire',style: black14NormalStyle.copyWith(fontWeight: FontWeight.w500,fontSize: 10,color: colorGreyBlack),),
        trailing: Container(
          width: 160,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Text('data'),
              Container(child: _buildSendBtn(),height: 40,width: 75,),
              Container(child: _buildRequestBtn(),height: 40,width: 80,),
              //_buildRequestBtn()
            ],
          ),
        ),
      ),
    );
  }

  //Send button
  Widget _buildSendBtn() {
    return raisedButton(
      textColor: Colors.white,
      minWidth: 30,
      text: "Send",
      fontSize: 12,
      //leadingIcon: Icon(Icons.send),
      height: 30.0,
      borderRadius: 10,
      color: primaryColor,
      //borderSideColor: Colors.white,
      splashColor: Colors.blue[200],
      style: TextStyle(
        color: primaryColor,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
    );
  }

  //Request button
  Widget _buildRequestBtn() {
    return raisedButton(
      textColor: primaryColor,
      minWidth: 50,
      text: "Request",
      fontSize: 10,
      //leadingIcon: Icon(Icons.send),
      height: 30.0,
      borderRadius: 10,
      color: lightPrimaryColor,
      buttonColor: lightPrimaryColor,
      //borderSideColor: Colors.white,
      splashColor: lightPrimaryColor,
      style: TextStyle(
        color: primaryColor,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        letterSpacing: 1.2,
      ),
    );
  }

  //pop up
  _buildPopUp(){
    PopupMenu menu = PopupMenu(
        backgroundColor: Colors.teal,
        lineColor: Colors.tealAccent,
        maxColumn: 3,
        items: [
          MenuItem(title: 'Copy', image: Image.asset('assets/copy.png')),
          MenuItem(
              title: 'Home',
              textStyle: TextStyle(fontSize: 10.0, color: Colors.tealAccent),
              image: Icon(
                Icons.home,
                color: Colors.white,
              )),
          MenuItem(
              title: 'Mail',
              image: Icon(
                Icons.mail,
                color: Colors.white,
              )),
          MenuItem(
              title: 'Power',
              image: Icon(
                Icons.power,
                color: Colors.white,
              )),
          MenuItem(
              title: 'Setting',
              image: Icon(
                Icons.settings,
                color: Colors.white,
              )),
          MenuItem(
              title: 'PopupMenu',
              image: Icon(
                Icons.menu,
                color: Colors.white,
              ))
        ],
        onClickMenu: null,
        onDismiss: null);
    menu.show();
  }
}
