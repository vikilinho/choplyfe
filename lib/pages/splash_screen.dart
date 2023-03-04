import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    // _animationController = AnimationController(
    //     vsync: this, duration: const Duration(milliseconds: 600));
    // _animation = Tween<double>(begin: 0, end: 100).animate(_animationController)
    //   ..addListener(() {
    //     setState(() {});
    //   });
    // _animationController.forward();
    Timer(const Duration(seconds: 3), () => context.go('/LandingPage'));
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
