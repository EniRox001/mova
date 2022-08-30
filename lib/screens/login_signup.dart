import 'package:mova/imports.dart';

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
            Image.asset(
              kLoginImage,
              height: imageHeightLargest,
              width: imageWidthLargest,
            ),
            Text(
              tLoginSignupText,
              style: kLargeText,
            ),
            for (int i = 0; i < 3; i++)
              WLoginButtonLarge(
                logo: kLoginButtonImages[i],
                text: tLoginButtonText[i],
                onPressed: () {},
              ),
            const WTextDivider(
              text: tLoginTextDivider,
            ),
            WElevatedButton(
              text: tLoginButtonPasswordText,
              onPressed: () {
                Get.toNamed('/login');
              },
              buttonStyle: kOnboardingButtonStyle,
            ),
            WInlineAltText(
                altTextOne: tLoginAltTextOne,
                altTextTwo: tLoginAltTextTwo,
                onPressed: () {
                  Get.toNamed('/signup');
                })
          ],
        ),
      ),
    );
  }
}
