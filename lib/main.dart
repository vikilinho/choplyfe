import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'route.dart' as route;

var platform;
var finalpass;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    if (Platform.isAndroid) {
      platform = "ANDROID"; // Android
    } else if (Platform.isIOS) {
      platform = "IOS"; // iOS
    }
    return ScreenUtilInit(builder: (context, child) {
      designSize:
      const Size(360, 640);

      minTextAdapt:
      true;

      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp, // only allow portrait
      ]);

      return GetMaterialApp(
        // routerConfig: router,
        debugShowCheckedModeBanner: false,
        title: 'Choplife',

        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: route.controller, // route
        initialRoute: route.splashPage,
      );
    });
  }
}
