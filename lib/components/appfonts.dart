import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle normalText = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Colors.black,
      fontStyle: FontStyle.normal,
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
    ),
  );
  static TextStyle subText = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Colors.black,
      fontStyle: FontStyle.normal,
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
    ),
  );
  static TextStyle topicText = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Colors.black,
      fontStyle: FontStyle.normal,
      fontSize: 30.sp,
      fontWeight: FontWeight.w600,
    ),
  );
  static TextStyle categoriesText = GoogleFonts.inter(
    textStyle: TextStyle(
      color: const Color(0xff403C56),
      fontStyle: FontStyle.italic,
      fontSize: 12.sp,
      fontWeight: FontWeight.w800,
    ),
  );
}
