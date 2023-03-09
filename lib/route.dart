import 'package:choplife/components/app_imports.dart';

const String loginPage = 'LOGIN';
const String homePage = 'HOME';
const String registerPage = 'REGISTER';
const String splashPage = 'SPLASH';
const String landingPage = 'LANDINGPAGE';
const String forgotPasswordPage = 'FORGOTPASSWORD';
const String newPasswordPage = 'NEWPASSWORD';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case loginPage:
      return MaterialPageRoute(builder: (context) => const LoginPage());
    case homePage:
      return MaterialPageRoute(builder: (context) => const HomePage());
    case registerPage:
      return MaterialPageRoute(builder: (context) => const SignupPage());
    case splashPage:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case landingPage:
      return MaterialPageRoute(builder: (context) => const LandingPage());
    case forgotPasswordPage:
      return MaterialPageRoute(builder: (context) => const ForgotPassword());
    case newPasswordPage:
      return MaterialPageRoute(builder: (context) => const NewPasswordPage());
    default:
      throw Exception('Invalid route: ${settings.name}');
  }
}