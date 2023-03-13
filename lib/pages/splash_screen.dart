import 'dart:async';
import 'dart:developer';

import 'package:choplife/components/app_imports.dart';

import '../main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future getMyTk() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var tokenObtained = prefs.getString('token');

    log(tokenObtained.toString());
    setState(() {
      finalpass = tokenObtained;

      // profilePic = prefs.getString('photo');
      // if (prefs.getString('prefEmail') != null) {
      //   firstLogin = false;
      //   log(firstLogin.toString());
      // }
      // var token = finalPass;
    });
  }

  @override
  void initState() {
    super.initState();

    getMyTk().whenComplete(() async {
      Timer(
          const Duration(seconds: 2),
          () => finalpass == null
              ? Get.off(() => const LoginPage())
              : Get.off(() => const NavigationScreen()));
    });
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
