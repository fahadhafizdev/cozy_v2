import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_color.dart';

class AppFont {
  static FontWeight light = FontWeight.w300;
  static FontWeight regular = FontWeight.w400;
  static FontWeight medium = FontWeight.w500;
  static FontWeight semiBold = FontWeight.w600;
  static FontWeight bold = FontWeight.w700;
  static FontWeight extraBold = FontWeight.w800;

  static TextStyle blackTextStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    color: AppColor.black,
  );

  static TextStyle whiteTextStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    color: AppColor.white,
  );

  static TextStyle greyTextStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w300,
    color: AppColor.grey1,
  );

  static TextStyle grey2TextStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w300,
    color: AppColor.grey2,
  );

  static TextStyle purpleTextStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    color: AppColor.mainColor,
  );

  static TextStyle regulerTextStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    color: AppColor.black,
  );
}
