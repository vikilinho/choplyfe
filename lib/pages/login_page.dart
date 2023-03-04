import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Hello Again",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w800),
                    )),
                const SizedBox(
                  width: 10,
                ),
                Image.asset("images/emoji.png")
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Text("Welcome back you’ve been missed!",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
