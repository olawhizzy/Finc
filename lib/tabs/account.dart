import 'package:dotted_border/dotted_border.dart';
import 'package:finc/constants.dart';
import 'package:finc/sizeConfig.dart';
import 'package:finc/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        width: SizeConfig.screenWidth,
        height: height,
        color: extraLightPrimaryColor,
        child: Column(
          children: [
            _buildGreenBackgroundBox(), //Widgeth for greenbackground color
            _buildQrImage(), //Widget for QR image
            _buildButtonCard(), // For button card desing
          ],
        ),
      ),
    );
  }

  // to design the box with green background
  _buildGreenBackgroundBox(){
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return DottedBorder(
      borderType: BorderType.RRect,
      color: Color(0xFF3CC13B),
      strokeWidth: 2,
      dashPattern: [8, 4],
      radius: Radius.circular(12),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        child: Container(
          padding: EdgeInsets.all(20),
          height: 86,
          color: Color(0xFFF6FBF6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: colorBlack,
                child: Icon(Icons.account_balance,color: Color(0xFFF3BB1C),),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Account Name', style: black12NormalStyle,),
                  heightSizeBox10,
                  Text('Queennette Onyekachi', style: black12NormalStyle.copyWith(color: Color(0xFF3CC13B)),),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Account Number', style: black12NormalStyle,),
                  heightSizeBox10,
                  Text('0098985676', style: black12NormalStyle.copyWith(color: Color(0xFF3CC13B)),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  //To design QR image
  _buildQrImage(){
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print(height);
    print(width);
    return Container(
      height: 180,
      width: width,
      margin: EdgeInsets.symmetric(horizontal: 90, vertical: 40),
      child: Stack(
        children: [
          Center(
            child: DottedBorder(
              dashPattern: [53],
              borderType: BorderType.RRect,
              radius: Radius.circular(12),
              child: QrImage(
                data: "1234567890",
                version: QrVersions.auto,
                size: 120.0,
                eyeStyle: QrEyeStyle(eyeShape: QrEyeShape.square, color: Colors.black),
                dataModuleStyle: QrDataModuleStyle(dataModuleShape: QrDataModuleShape.square, color: Colors.black),
                embeddedImageStyle: QrEmbeddedImageStyle(),
                embeddedImage: AssetImage('images/female.png'),
                //eyeStyle = const QrEyeStyle(eyeShape: QrEyeShape.square, color: Colors.black),
                //dataModuleStyle = QrDataModuleStyle(dataModuleShape: QrDataModuleShape.square, color: Colors.black),
              ),
            ),
          ),
          Positioned(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/left.png'),
              ],
            ),
          ),
          Positioned(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/top.png'),
              ],
            ),
          ),
          Positioned(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/bottom.png'),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/right.png'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  //Button designs
  _buildButtonCard(){
    return Container(
      width: SizeConfig.screenWidth,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              InkWell(
                onTap: () => _showFullModal(context),
                child: Material(
                  elevation: 4.0,
                  //type: MaterialType.button,
                  borderRadius: BorderRadius.circular(5),
                  borderOnForeground: true,
                  child: Container(
                    height: 60,
                    width: 55,
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: modalHeaderColor,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Image.asset(
                            'images/icon.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              heightSizeBox10,
              Text('USSD Code',style: black14NormalStyle,)
            ],
          ),
          Column(
            children: [
              InkWell(
                child: Material(
                  elevation: 4.0,
                  //type: MaterialType.button,
                  borderRadius: BorderRadius.circular(5),
                  borderOnForeground: true,
                  child: Container(
                    height: 60,
                    width: 55,
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: lightPrimaryColor,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Image.asset(
                            'images/Group.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              heightSizeBox10,
              Text('Wallpaper',style: black14NormalStyle,)
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () => _showFullModalUrl(context),
                child: Material(
                  elevation: 4.0,
                  //type: MaterialType.button,
                  borderRadius: BorderRadius.circular(5),
                  borderOnForeground: true,
                  child: Container(
                    height: 60,
                    width: 55,
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: Color.fromRGBO(233, 32, 34, 0.14),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Image.asset(
                            'images/link.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              heightSizeBox10,
              Text('My link',style: black14NormalStyle,)
            ],
          )
        ],
      ),
    );
  }

  // for ussd code modal
  _showFullModal(context) {
    var width = MediaQuery.of(context).size.width;
    showGeneralDialog(
      context: context,
      barrierDismissible: false, // should dialog be dismissed when tapped outside
      barrierLabel: "Modal", // label for barrier
      transitionDuration: Duration(milliseconds: 500), // how long it takes to popup dialog after button click
      pageBuilder: (_, __, ___) { // your widget implementation
        return SafeArea(
          top: false,
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
                    height: 350,
                    //color: Colors.lightBlueAccent,
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              height: 300,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  heightSizeBox20,
                                  heightSizeBox20,
                                  heightSizeBox20,
                                  Text(
                                    'You can share your personal USSD code with anyone to receive payments from them.',
                                    style: black14NormalStyle,
                                    textAlign: TextAlign.center,
                                  ),
                                  heightSizeBox20,
                                  Container(
                                    height: 52,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: colorBlack),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('USSD Code: ',style: black14NormalStyle,),
                                        Text('*5554*00*1234#',style: black14NormalStyle,),
                                        Row(
                                          children: [
                                            Text('Copy', style: black14NormalStyle.copyWith(color: primaryColor, fontWeight: FontWeight.bold),),
                                            heightSizeBox20,
                                            Icon(Icons.copy, color: primaryColor,)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  heightSizeBox20,
                                  heightSizeBox20,
                                  _buildShareUssd(),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 0.0,
                          right: 150,
                          // (background container size) - (circle height / 2)
                          child: Container(
                            height: 100.0,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: modalHeaderColor
                            ),
                            child: Center(
                                child: Image.asset('images/icon.png')
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  /*Positioned(
                    bottom: 200.0, // (background container size) - (circle height / 2)
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      width: double.infinity,
                      color: Colors.white,
                      child: Text('text:"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",')),*/

                ],
              ),
            ),
          ),
        );
      },
    );
  }
  //Share USSD code button
  Widget _buildShareUssd() {
    return raisedButton(
      textColor: Colors.white,
      minWidth: double.infinity,
      text: "SHARE USSD CODE",
      //leadingIcon: Icon(Icons.send),
      height: 60.0,
      borderRadius: 10,
      color: primaryColor,
      //borderSideColor: Colors.white,
      splashColor: Colors.blue[200],
      style: TextStyle(
        color: primaryColor,
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        letterSpacing: 1.2,
      ),
    );
  }
  // for url link modal
  _showFullModalUrl(context) {
    var width = MediaQuery.of(context).size.width;
    showGeneralDialog(
      context: context,
      barrierDismissible: false, // should dialog be dismissed when tapped outside
      barrierLabel: "Modal", // label for barrier
      transitionDuration: Duration(milliseconds: 500), // how long it takes to popup dialog after button click
      pageBuilder: (_, __, ___) { // your widget implementation
        return SafeArea(
          top: false,
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
                    height: 350,
                    //color: Colors.lightBlueAccent,
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              height: 300,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  heightSizeBox20,
                                  heightSizeBox20,
                                  heightSizeBox20,
                                  Text(
                                    'You can share your personal URL with anyone to receive payments from them.',
                                    style: black14NormalStyle,
                                    textAlign: TextAlign.center,
                                  ),
                                  heightSizeBox20,
                                  Container(
                                    height: 52,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: colorBlack),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('URL: ',style: black14NormalStyle,),
                                        Text('bloomm.com/url/queennettekay29',style: black14NormalStyle,),
                                        Row(
                                          children: [
                                            Text('Copy', style: black14NormalStyle.copyWith(color: primaryColor, fontWeight: FontWeight.bold),),
                                            heightSizeBox20,
                                            Icon(Icons.copy, color: primaryColor,)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  heightSizeBox20,
                                  heightSizeBox20,
                                  _buildShareUrl(),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 0.0,
                          right: 150,
                          // (background container size) - (circle height / 2)
                          child: Container(
                            height: 100.0,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: modalHeaderColor
                            ),
                            child: Center(
                                child: Image.asset('images/link.png')
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  /*Positioned(
                    bottom: 200.0, // (background container size) - (circle height / 2)
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      width: double.infinity,
                      color: Colors.white,
                      child: Text('text:"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",')),*/

                ],
              ),
            ),
          ),
        );
      },
    );
  }
  //Share url link button
  Widget _buildShareUrl() {
    return raisedButton(
      textColor: Colors.white,
      minWidth: double.infinity,
      text: "SHARE URL",
      //leadingIcon: Icon(Icons.send),
      height: 60.0,
      borderRadius: 10,
      color: primaryColor,
      //borderSideColor: Colors.white,
      splashColor: Colors.blue[200],
      style: TextStyle(
        color: primaryColor,
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        letterSpacing: 1.2,
      ),
    );
  }
}
