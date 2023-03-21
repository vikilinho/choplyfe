import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../components/app_imports.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword>
    with InputValidationMixin {
  final TextEditingController _emailController = TextEditingController();
  final AuthService authController =
      Get.put(AuthService()); //initialise  auth service
  final _forgotpasswordKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _emailController.dispose();

    super.dispose();
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
      body: Obx(
        () => SafeArea(
            child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                SizedBox(height: 40.h),
                Image.asset("images/padlock.png"),
                SizedBox(height: 50.h),
                Text(
                  "Forgot Password?",
                  style: AppFonts.topicText,
                ),
                SizedBox(height: 15.h),
                Text("Let’s help you recover your password?",
                    style: GoogleFonts.inter(
                      textStyle: AppFonts.normalText,
                    )),
                SizedBox(height: 35.h),
                Form(
                    key: _forgotpasswordKey,
                    child: Column(
                      children: [
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
                            return isEmailValid(email.toString())
                                ? null
                                : "Please input a valid email or phone number";
                          },
                        ),
                      ],
                    )),
                SizedBox(height: 35.h),
                authController.isLoading.value
                    ? const Center(
                        child: SpinKitDancingSquare(
                        color: AppColors.primaryColor,
                      ))
                    : CustomButton(
                        text: "Submit",
                        onPressed: () async {
                          if (_forgotpasswordKey.currentState!.validate()) {
                            var userDetails = {
                              "email": _emailController.text.trim(),
                            };

                            await authController.forgotpassword(
                                userDetails: userDetails);
                          }
                          setState(() {});
                        },
                        color: const Color(0xffF4972E),
                        textcolor: Colors.black)
              ],
            ),
          ),
        )),
      ),
    );
  }
}
