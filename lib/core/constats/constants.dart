import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//Size.....
Widget kHeight(double height) {
  return SizedBox(
    height: height.h,
  );
}

Widget kWidth(double width) {
  return SizedBox(
    width: width.w,
  );
}

//Colors....
const kDeepPurple = Color(0xFF45197D);
const kLightPurple = Color(0xFF6E34B8);
const kBlackColor = Colors.black;
const kGreyColor = Colors.grey;
const kWhiteColor = Colors.white;
