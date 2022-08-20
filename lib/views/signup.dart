import 'package:flutter/material.dart';
import 'package:mova/utils/constants.dart';
import 'package:mova/utils/text_files.dart';
import 'package:mova/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

final emailController = TextEditingController();
final passwordController = TextEditingController();

class _SignUpState extends State<SignUp> {
  bool rememberMe = false;

  void onRememberMe(remember) {
    rememberMe ? remember : remember;
  }

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
              mainLogo,
              height: imageHeightLarge,
              width: imageWidthLarge,
            ),
            Text(tSignUpText, style: kLargeText),
            WInputField(
              controller: emailController,
              prefixIcon: Icons.email,
              hintText: tSignUpEmailHintText,
              suffixIcon: Icons.nat,
            ),
            WInputField(
              controller: passwordController,
              prefixIcon: Icons.lock,
              hintText: tSignUpPasswordHintText,
              suffixIcon: Icons.visibility,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: rememberMe,
                  onChanged: onRememberMe,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0)),
                  side: const BorderSide(
                    color: Colors.red,
                    width: 3.0,
                    style: BorderStyle.solid,
                  ),
                ),
                Text(
                  tSignUpRememberMe,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
            WElevatedButton(text: tSignUpButtonText, onPressed: () {}),
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
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
