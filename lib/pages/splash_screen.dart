import 'dart:async';

import 'package:choplife/components/app_imports.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () => Get.off(const LandingPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("images/top_end.png"),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Image.asset("images/logo.png"),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("images/bottom_left.png"),
            ],
          ),

          // TextButton(
          //     onPressed: () {
          //       _animationController.forward();
          //     },
          //     child: const Text("Animate"))
        ],
      )),
    );
  }
}
