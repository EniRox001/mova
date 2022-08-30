import 'package:mova/imports.dart';

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
            WRememberMeWidget(
              value: rememberMe,
              onChanged: (newValue) {
                setState(() {
                  rememberMe = newValue!;
                });
              },
              text: tSignUpRememberMe,
            ),
            WElevatedButton(
              text: tLoginButtonTextMain,
              onPressed: () {
                Get.toNamed('/ac_interest');
              },
              buttonStyle: kOnboardingButtonStyle,
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/reset_password');
              },
              child: Text(
                tForgotPassword,
                style: kForgotPasswordTextStyle,
              ),
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
              altTextOne: tLoginAltTextOne,
              altTextTwo: tLoginAltTextTwo,
              onPressed: () {
                Get.back();
              },
            )
          ],
        ),
      ),
    );
  }
}
