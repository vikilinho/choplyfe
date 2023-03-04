import 'package:choplife/pages/landing_page.dart';
import 'package:choplife/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      designSize:
      const Size(360, 640);

      minTextAdapt:
      true;

      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp, // only allow portrait
      ]);
      final GoRouter router = GoRouter(
        routes: <GoRoute>[
          GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
              return const SplashScreen();
            },
          ),
          GoRoute(
            path: '/LandingPage',
            builder: (BuildContext context, GoRouterState state) {
              return const LandingPage();
            },
          ),
          // GoRoute(
          //   path: '/HomePage',
          //   builder: (BuildContext context, GoRouterState state) {
          //     return const HomePage();
          //   },
          // ),
        ],
      );
      return MaterialApp(
        // routerConfig: router,
        debugShowCheckedModeBanner: false,
        title: 'Choplife',
        home: const LandingPage(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      );
    });
  }
}
