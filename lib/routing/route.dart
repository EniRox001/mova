import 'package:mova/imports.dart';

class Routes {
  final getpage = [
    GetPage(name: '/', page: () => const Onboarding()),
    GetPage(name: '/login_signup', page: () => const LoginSignup()),
    GetPage(name: '/signup', page: () => const SignUp()),
    GetPage(name: '/login', page: () => const Login()),
    GetPage(name: '/ac_interest', page: () => const Interest()),
    GetPage(name: '/edit_profile', page: () => const EditProfile()),
    GetPage(name: '/setup_pin', page: () => const SetupPin()),
    GetPage(name: '/reset_password', page: () => const ResetPassword()),
    GetPage(
        name: '/reset_password_code', page: () => const ResetPasswordCode()),
    GetPage(name: '/new_password', page: () => const NewPassword()),
    GetPage(name: '/home_page', page: () => const HomePage()),
  ];
}
