import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(child: Image.asset("images/landingimage.png")),
          RichText(
              text: TextSpan(
                  text: "Find ",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp)),
                  children: <TextSpan>[
                TextSpan(
                    text: "Amazing Events",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color(0xffFF8700),
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold)))
              ])),
          SizedBox(
            height: 10.h,
          ),
          Text("Everywhere You Go",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 20.h,
          ),
          Text("Let’s find your favorite events on one single mobile app.",
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
              )),
          SizedBox(
            height: 120.h,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Stack(
              textDirection: TextDirection.rtl,
              children: [
                GestureDetector(
                  onTap: () => log("signup"),
                  child: Container(
                    height: 50.h,
                    width: 342.w,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 226, 214, 214),
                            blurRadius: 2.0,
                            spreadRadius: 0.5,
                            offset: Offset(0.0, 0.0),
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 65.w,
                        ),
                        Text("Sign Up",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                            )),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => log("Login"),
                  child: Container(
                      height: 50.h,
                      width: 180.w,
                      decoration: BoxDecoration(
                          color: const Color(0xffF4972E),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                          child: Text("Login",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                              )))),
                ),
              ],
            ),
          ),
          // Container(
          //   height: 30.h,
          //   width: 150.w,
          //   decoration: const BoxDecoration(color: Colors.black),
          //   child: Container(
          //     decoration: const BoxDecoration(color: Colors.yellow),
          //   ),
          // )
        ],
      )),
    );
  }
}
