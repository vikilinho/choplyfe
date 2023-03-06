import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/custom_button.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: 40.h),
              Image.asset("images/padlock.png"),
              SizedBox(height: 50.h),
              Text("Forgot Password?",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w800),
                  )),
              SizedBox(height: 15.h),
              Text("Let’s help you recover your password?",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500),
                  )),
              SizedBox(height: 35.h),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                      decoration: const InputDecoration(
                    hintText: "Email Address",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:
                              Color(0xffF4972E)), // Set the focus color to blue
                    ),
                  )),
                ],
              )),
              SizedBox(height: 35.h),
              CustomButton(
                  text: "Submit",
                  onPressed: () {},
                  color: const Color(0xffF4972E),
                  textcolor: Colors.black)
            ],
          ),
        ),
      )),
    );
  }
}
