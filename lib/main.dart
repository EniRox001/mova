import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mova/utils/constants.dart';
import 'package:mova/views/account_setup_interest.dart';
import 'package:mova/views/edit_profile.dart';
import 'package:mova/views/home_page.dart';
import 'package:mova/views/login.dart';
import 'package:mova/views/login_signup.dart';
import 'package:mova/views/new_password.dart';
import 'package:mova/views/onboarding.dart';
import 'package:mova/views/reset_password.dart';
import 'package:mova/views/reset_password_code.dart';
import 'package:mova/views/setup_pin.dart';
import 'package:mova/views/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  runApp(MyApp(showHome: showHome));
}

class MyApp extends StatelessWidget {
  final bool showHome;
  const MyApp({Key? key, required this.showHome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 960),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Mova",
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              toolbarHeight: spaceMassive,
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(
                color: Colors.black,
              ),
              elevation: 0,
              toolbarTextStyle: Theme.of(context).textTheme.titleLarge,
              titleTextStyle: Theme.of(context).textTheme.titleLarge,
            ),
            brightness: Brightness.light,
            scaffoldBackgroundColor: Colors.white,
            primaryColor: Colors.lightBlue[800],
          ),
          // initialRoute: showHome ? '/login_signup' : '/',
          initialRoute: '/home_page',
          routes: {
            '/': (context) => const Onboarding(),
            '/login_signup': (context) => const LoginSignup(),
            '/signup': (context) => const SignUp(),
            '/login': (context) => const Login(),
            '/ac_interest': (context) => const Interest(),
            '/edit_profile': (context) => const EditProfile(),
            '/setup_pin': (context) => const SetupPin(),
            '/reset_password': (context) => const ResetPassword(),
            '/reset_password_code': (context) => const ResetPasswordCode(),
            '/new_password': (context) => const NewPassword(),
            '/home_page': (context) => const HomePage(),
          },
        );
      },
    );
  }
}
