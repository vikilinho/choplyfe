// ignore_for_file: prefer_const_constructors

import 'package:choplife/components/app_imports.dart';

import 'package:flutter_svg/flutter_svg.dart';

const String nav2 = 'images/nav2.svg';
const String nav3 = 'images/nav3.svg';
const String nav4 = 'images/nav4.svg';
const String nav5 = 'images/homeIcon.svg';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final Widget navigationIcon = SvgPicture.asset(
    nav4,
    semanticsLabel: 'navigation icon',
    height: 20,
  );

  final Widget bookmarkIcon = SvgPicture.asset(
    nav3,
    semanticsLabel: 'bookmark icon',
    height: 20,
  );
  final Widget chequeIcon = SvgPicture.asset(
    nav2,
    semanticsLabel: 'cheque icon',
    height: 20,
  );
  final Widget homeIcon = SvgPicture.asset(
    nav5,
    semanticsLabel: 'home icon',
    height: 20,
  );

  @override
  void initState() {
    super.initState();
  }

  bool notDriver = true;
  // ignore: unused_field

  int _currentIndex = 0;
  set currentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          HomePage(),
          // Trips(),
          LandingPage(),

          LoginPage(),
          ForgotPassword(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) => currentIndex = index,
        // ignore: prefer_const_literals_to_create_immutables
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: homeIcon, label: ""),
          BottomNavigationBarItem(icon: chequeIcon, label: ""),
          BottomNavigationBarItem(icon: bookmarkIcon, label: ""),
          BottomNavigationBarItem(icon: navigationIcon, label: ""),
        ],
      ),
    );
  }
}
