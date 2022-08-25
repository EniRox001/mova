import 'package:flutter/material.dart';
import 'package:mova/utils/constants.dart';
import 'package:mova/utils/text_files.dart';
import 'package:mova/widgets.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            Text(tLoginText, style: kLargeText),
            WInputField(
              controller: loginEmailController,
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
                Checkbox(
                  value: rememberMe,
                  onChanged: (newValue) {
                    setState(() {
                      rememberMe = newValue!;
                    });
                  },
                  activeColor: mainbackgroundColor,
                  shape: kCheckboxShapeStyle,
                  side: kCheckboxSideStyle,
                ),
                Text(
                  tSignUpRememberMe,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
            WElevatedButton(
              text: tLoginButtonTextMain,
              onPressed: () {
                Navigator.pushNamed(context, '/ac_interest');
              },
            ),
            Text(tForgotPassword, style: kForgotPasswordTextStyle),
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
              altTextOne: tLoginAltTextOne,
              altTextTwo: tLoginAltTextTwo,
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
