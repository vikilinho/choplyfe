import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "New Password",
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontSize: 16.sp,
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
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
                      color: Color(0xffF4972E)), // Set the focus color to blue
                ),
              )),
              SizedBox(
                height: 15.h,
              ),
              const Text("New Password"),
              TextFormField(
                  decoration: const InputDecoration(
                hintText: "Email Address",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color(0xffF4972E)), // Set the focus color to blue
                ),
              )),
            ],
          ))
        ],
      )),
    );
  }
}
