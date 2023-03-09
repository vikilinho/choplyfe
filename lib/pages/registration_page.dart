import 'package:flutter/services.dart';

import '../components/app_imports.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> with InputValidationMixin {
  late ScrollController scrollController;
  bool isChecked = false;
  bool acceptTerms = true;
  bool confirmObscure = true;

  final _registrationFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _nickNameController = TextEditingController();

  final TextEditingController _phoneNumberController = TextEditingController()
    ..text = "+234";
  @override
  void initState() {
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
    super.initState();
  }

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
      body: SingleChildScrollView(
        child: SafeArea(
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
                  key: _registrationFormKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nickNameController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          hintText: "Nickname",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(
                                    0xffF4972E)), // Set the focus color to blue
                          ),
                        ),
                        validator: (email) {
                          return (email!.isEmpty)
                              ? 'Please input a valid Nickname'
                              : null;
                        },
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      TextFormField(
                        controller: _emailController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          hintText: "Email Address",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(
                                    0xffF4972E)), // Set the focus color to blue
                          ),
                        ),
                        validator: (email) {
                          return isEmailValid(email!)
                              ? null
                              : 'Please enter a valid email address';
                        },
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      TextFormField(
                        obscureText: false,
                        controller: _phoneNumberController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.phone,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[+0-9]')),
                        ],
                        decoration: const InputDecoration(
                          hintText: "08060003222",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(
                                    0xffF4972E)), // Set the focus color to blue
                          ),
                        ),
                        validator: (String? phoneNumber) {
                          return (phoneNumber!.length > 14 ||
                                  phoneNumber.length < 10)
                              ? 'Please input a valid phone number'
                              : null;
                        },
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      TextFormField(
                        obscureText: confirmObscure,
                        controller: _passwordController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          hintText: "Password",
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                confirmObscure = !confirmObscure;
                              });
                            },
                            child: const Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            ),
                          ),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(
                                    0xffF4972E)), // Set the focus color to blue
                          ),
                        ),
                        validator: (String? password) {
                          return (password!.isEmpty || password.length < 9)
                              ? 'Password is not valid'
                              : null;
                        },
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20.h,
                            width: 15.w,
                            child: Checkbox(
                                value: isChecked,
                                activeColor: AppColors.primaryColor,
                                onChanged: (val) {
                                  setState(() {
                                    isChecked = val as bool;
                                  });
                                }),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text("I accept the terms and privacy policy.",
                              style: AppFonts.normalText),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      CustomButton(
                          text: "Sign Up",
                          onPressed: () {},
                          color: AppColors.primaryColor,
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
      ),
    );
  }
}
