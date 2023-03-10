import 'package:choplife/route.dart' as route;
import 'package:choplife/components/app_imports.dart';
import 'package:choplife/services/auth_services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with InputValidationMixin {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final AuthService authController =
      Get.put(AuthService()); //initialise  auth service
  final _formKey = GlobalKey<FormState>();
  late ScrollController scrollController;
  bool obscure = true;
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
      body: Obx(
        () => SingleChildScrollView(
          child: SafeArea(
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
                    Text("Hello Again", style: AppFonts.topicText),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset("images/emoji.png")
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Text("Welcome back, you’ve been missed!",
                        style: AppFonts.subText),
                  ],
                ),
                SizedBox(
                  height: 48.h,
                ),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50.h,
                          width: 330.w,
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: _emailController,
                            decoration: const InputDecoration(
                              hintText: "dvicxy@gmail.com",
                              labelText: "Email Address",
                              labelStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffF4972E)),
                                // Set the focus color to blue
                              ),
                            ),
                            validator: (email) {
                              return isEmailValid(email!)
                                  ? null
                                  : 'Please enter a valid email address';
                            },
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        SizedBox(
                          height: 50.h,
                          width: 330.w,
                          child: TextFormField(
                            obscureText: obscure,
                            controller: _passwordController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                              hintText: "**********",
                              labelText: 'Password',
                              labelStyle: const TextStyle(color: Colors.black),
                              suffix: IconButton(
                                onPressed: () {
                                  setState(() {
                                    obscure = !obscure;
                                  });
                                },
                                icon: const Icon(Icons.visibility,
                                    color: AppColors.primaryColor),
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
                              return (password!.isEmpty || password.length < 6)
                                  ? 'Please input a valid password'
                                  : null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.pushNamed(
                                  context, route.forgotPasswordPage),
                              child: Text("Forgot password?",
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                        color: const Color(0xffF4972E),
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700),
                                  )),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        authController.isLoading.value
                            ? const Center(child: CircularProgressIndicator())
                            : CustomButton(
                                text: "Log In",
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    var userDetails = {
                                      "email": _emailController.text.trim(),
                                      "password":
                                          _passwordController.text.trim(),
                                    };

                                    await authController.login(
                                        userDetails: userDetails);
                                  }
                                  setState(() {});
                                },
                                color: const Color(0xffF4972E),
                                textcolor: Colors.black)
                      ],
                    )),
                SizedBox(
                  height: 30.h,
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
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, route.registerPage),
                  child: RichText(
                      text: TextSpan(
                          text: "Don’t have an account? ",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp)),
                          children: <TextSpan>[
                        TextSpan(
                            text: "Sign up",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Color(0xffFF8700),
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600)))
                      ])),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
