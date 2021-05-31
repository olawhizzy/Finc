import 'package:finc/constants.dart';
import 'package:finc/sizeConfig.dart';
import 'package:finc/tabs/account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorWhite,
      child: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.white,
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
                    onPressed: () {},
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
              centerTitle: true,
              title: Text(
                'My Profile',
                style: black20NormalStyle.copyWith(color: colorBlack),
              ),
              flexibleSpace: _buildFlexibleSpace(),
              bottom: PreferredSize(
                preferredSize: Size.square(250.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.symmetric(horizontal: BorderSide(color: Colors.grey,width: 0.2))
                  ),
                  child: TabBar(
                    labelColor: primaryColor,
                    indicatorColor: primaryColor,
                    unselectedLabelColor: colorGreyBlack,
                    tabs: [
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.person_outline),
                            Text('Account')
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.list),
                            Text('TImeline')
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.people_alt_outlined),
                            Text('Connections')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: TabBarView(
              children: [
                Account(),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
              ],
            ),

          ),
        ),
      ),
    );
  }

  _buildFlexibleSpace(){
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(40),
      height: 350,
      color: colorWhite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            width: 105,
            height: 105,
            child: Stack(
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('images/female.png',),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Positioned(
                  child: Container(
                    padding: EdgeInsets.all(3),
                      child: Icon(Icons.edit,color: colorWhite,size: 20,),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: primaryColor,
                      border: Border.all(color: colorWhite,width: 3.0)
                    ),
                  ),
                  bottom: 1.0,
                  right: 0.0,
                )
              ],
            ),
          ),
          Text(
            'Queennette Onyekachi',
            style: black18NormalStyle,
          ),
          heightSizeBox10,
          Text(
            '@queennettekay23',
            style: grey14NormalStyle,
          ),
        ],
      ),
    );
  }
}
