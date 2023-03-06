import 'package:choplife/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/socialicons.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Text("Sign Up!",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            Form(
                child: Column(
              children: [
                TextFormField(
                    decoration: const InputDecoration(
                  hintText: "Nickname",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color:
                            Color(0xffF4972E)), // Set the focus color to blue
                  ),
                )),
                SizedBox(
                  height: 15.h,
                ),
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
                SizedBox(
                  height: 15.h,
                ),
                Stack(
                  children: [
                    Container(
                      height: 45.h,
                      width: 50.w,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          border:
                              Border(right: BorderSide(color: Colors.grey))),
                      child: const Center(child: Text("+234")),
                    ),
                    TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(
                                    0xffF4972E)), // Set the focus color to blue
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Password",
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(
                                0xffF4972E)), // Set the focus color to blue
                      ),
                    )),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Checkbox(value: false, onChanged: null),
                    Text("I accept the terms and privacy policy",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontSize: 16.sp,
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomButton(
                    text: "Sign Up",
                    onPressed: () {},
                    color: const Color(0xffF4972E),
                    textcolor: Colors.black)
              ],
            )),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    indent: 20.0,
                    endIndent: 10.0,
                    thickness: 1,
                  ),
                ),
                Text("or login with",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    )),
                const Expanded(
                    child: Divider(
                  indent: 10.0,
                  endIndent: 20.0,
                  thickness: 1,
                )),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SocialIcons(
                  image: "images/gmail.png",
                ),
                SocialIcons(
                  image: "images/facebook.png",
                ),
                SocialIcons(
                  image: "images/apple.png",
                )
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            RichText(
                text: TextSpan(
                    text: "Already have an account? ",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp)),
                    children: <TextSpan>[
                  TextSpan(
                      text: "Log In",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color(0xffFF8700),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600)))
                ])),
          ],
        ),
      )),
    );
  }
}
