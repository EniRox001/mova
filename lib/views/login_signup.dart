import 'package:flutter/material.dart';
import 'package:mova/utils/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mova/utils/text_files.dart';
import 'package:mova/widgets.dart';

class LoginSignup extends StatefulWidget {
  const LoginSignup({Key? key}) : super(key: key);

  @override
  State<LoginSignup> createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: padLarge,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  loginImage,
                  height: 300.0.h,
                  width: 300.0.w,
                ),
              ],
            ),
            Text(
              tLoginSignupText,
              style: Theme.of(context).textTheme.headline4,
            ),
            for (int i = 0; i < 3; i++)
              WLoginButtonLarge(
                logo: kLoginButtonImages[i],
                text: tLoginButtonText[i],
                onPressed: () {},
              ),
            const WTextDivider(
              text: 'or',
            ),
            WElevatedButton(
              text: tLoginButtonPasswordText,
              onPressed: () {},
            ),
            WInlineAltText(
                altTextOne: tLoginAltTextOne,
                altTextTwo: tLoginAltTextTwo,
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                })
          ],
        ),
      ),
    );
  }
}
