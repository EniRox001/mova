import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mova/views/account_setup_interest.dart';
import 'package:mova/views/edit_profile.dart';
import 'package:mova/views/login.dart';
import 'package:mova/views/login_signup.dart';
import 'package:mova/views/onboarding.dart';
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
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(
                  color: Colors.black,
                ),
                elevation: 0,
                toolbarTextStyle: TextStyle(
                  color: Colors.black,
                )),
            brightness: Brightness.light,
            scaffoldBackgroundColor: Colors.white,
            primaryColor: Colors.lightBlue[800],
          ),
          initialRoute: showHome ? '/login_signup' : '/',
          routes: {
            '/': (context) => const Onboarding(),
            '/login_signup': (context) => const LoginSignup(),
            '/signup': (context) => const SignUp(),
            '/login': (context) => const Login(),
            '/ac_interest': (context) => const Interest(),
            '/edit_profile': (context) => const EditProfile(),
          },
        );
      },
    );
  }
}
