import 'package:flutter/material.dart';
import 'package:mova/utils/constants.dart';
import 'package:mova/utils/text_files.dart';
import 'package:mova/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Padding(
        padding: padLarge,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              kMainLogo,
              height: imageHeightLarge,
              width: imageWidthLarge,
            ),
            Text(tSignUpText, style: kLargeText),
            WInputField(
              controller: signUpEmailController,
              prefixIcon: Icons.email,
              hintText: emailHintText,
              suffixIcon: Icons.nat,
            ),
            WInputField(
              controller: signUpPasswordController,
              prefixIcon: Icons.lock,
              hintText: passwordHintText,
              suffixIcon: Icons.visibility,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WRememberMeWidget(
                  value: rememberMe,
                  onChanged: (newValue) {
                    setState(() {
                      rememberMe = newValue!;
                    });
                  },
                  text: tSignUpRememberMe,
                ),
                Text(
                  tSignUpRememberMe,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
            WElevatedButton(
              text: tSignUpButtonTextMain,
              onPressed: () {
                Navigator.pushNamed(context, '/ac_interest');
              },
              buttonStyle: kOnboardingButtonStyle,
            ),
            const WTextDivider(text: tSignUpTextDivider),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (int i = 0; i < 3; i++)
                  WLoginButtonSmall(
                      logo: kLoginButtonImages[i], onPressed: () {})
              ],
            ),
            WInlineAltText(
              altTextOne: tSignUpAltTextOne,
              altTextTwo: tSignUpAltTextTwo,
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            )
          ],
        ),
      ),
    );
  }
}
