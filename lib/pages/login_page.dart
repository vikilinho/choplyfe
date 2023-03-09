import 'package:choplife/route.dart' as route;
import 'package:choplife/components/app_imports.dart';

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
                Text("Welcome back you’ve been missed!",
                    style: AppFonts.subText),
              ],
            ),
            SizedBox(
              height: 48.h,
            ),
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
                SizedBox(
                  height: 15.h,
                ),
                TextFormField(
                    decoration: const InputDecoration(
                  hintText: "**********",
                  suffixIcon: Icon(
                    Icons.visibility_off,
                    color: Color(0xffF4972E),
                  ),
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
                CustomButton(
                    text: "Log In",
                    onPressed: () {},
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
    );
  }
}
