import 'package:mova/imports.dart';

class ResetPasswordCode extends StatelessWidget {
  const ResetPasswordCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          tResetPasswordMainText,
        ),
      ),
      body: Padding(
        padding: padLarge,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                tResetPasswordEmailSentText,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            WPinCodeTextField(
              onchanged: (value) {},
              controller: resetPasswordPinController,
            ),
            WInlineAltText(
              altTextOne: tResetPasswordAltTextOne,
              altTextTwo: tResetPasswordAltTextTwo,
              onPressed: () {},
            ),
            WElevatedButton(
              text: tResetPasswordButtonText,
              onPressed: () {
                Get.toNamed('/new_password');
              },
              buttonStyle: kOnboardingButtonStyle,
            )
          ],
        ),
      ),
    );
  }
}
