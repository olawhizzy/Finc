import 'package:finc/constants.dart';
import 'package:finc/widgets/button.dart';
import 'package:flutter/material.dart';
class ModalTest extends StatefulWidget {
  @override
  _ModalTestState createState() => _ModalTestState();
}

class _ModalTestState extends State<ModalTest> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Modal Bottom Sheet',
            style: TextStyle(color: Colors.grey),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.grey,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "MODAL BOTTOM SHEET EXAMPLE",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    letterSpacing: 0.4,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                onPressed: () {
                  //_buildSheet();
                  ShowSheetModal();
                },
                padding:
                EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
                color: Colors.pink,
                child: Text(
                  'Click Me',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.6),
                ),
              ),
              RaisedButton(
                onPressed: (){
                  _showFullModal(context);
                },
                child: Text('Full Screen Modal'),
              )
            ],
          ),
        ),
      ),
    );
  }

  ShowSheetModal(){
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Colors.transparent,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: new Icon(Icons.photo),
                  title: new Text('Photo'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.music_note),
                  title: new Text('Music'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.videocam),
                  title: new Text('Video'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.share),
                  title: new Text('Share'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          );
        });
  }

  Widget _buildSheet() {
    return Column(
      children: [
        ShowSheetModal(),
      ],
    );
  }
  _showFullModal(context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false, // should dialog be dismissed when tapped outside
      barrierLabel: "Modal", // label for barrier
      transitionDuration: Duration(milliseconds: 500), // how long it takes to popup dialog after button click
      pageBuilder: (_, __, ___) { // your widget implementation
        return SafeArea(
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
                      IconButton(
                        padding: EdgeInsets.all(40.0),
                        icon: Icon(Icons.cancel,size: 40,color: Colors.white,),
                        onPressed: () => Navigator.pop(context),
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
                            width: 100.0,
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
}
