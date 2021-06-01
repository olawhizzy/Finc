import 'package:flutter/material.dart';

var modalHeaderColor = Color(0xffFDF6DF);
const Color colorBlack = Color(0xff000000);
const Color colorGreyBlack = Color(0xff828282);
const Color colorWhite = Color(0xffffffff);
const Color colorRed = Color(0xffC44137);
const Color primaryColor = Color(0xFF0815B3);
const Color lightPrimaryColor = Color(0xFFE9E9FF);
const Color extraLightPrimaryColor = Color(0xFFFBFBFF);
var black14NormalStyle = TextStyle(
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
  fontSize: 15,
  color: colorBlack
);
var black20NormalStyle = TextStyle(
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w700,
  fontSize: 20,
  color: colorBlack
);
var black18NormalStyle = TextStyle(
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w700,
  fontSize: 20,
  color: colorBlack
);
var black12NormalStyle = TextStyle(
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
  fontSize: 12,
  color: colorBlack
);
var grey14NormalStyle = TextStyle(
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
  fontSize: 14,
  color: Colors.grey
);
var heightSizeBox20 = SizedBox(height: 20,);
var heightSizeBox10 = SizedBox(height: 10,);
var shadowStyle = BoxDecoration(
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
);