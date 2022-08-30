import 'package:mova/imports.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

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
            Image.asset(
              resetPasswordLogo,
              height: imageHeightLarge,
              width: imageWidthLarge,
            ),
            Text(
              tResetPasswordText,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            WStockInputField(
              controller: resetPasswordEmailController,
              hintText: tResetPasswordEmailHint,
              suffixIcon: Icons.email,
            ),
            WElevatedButton(
              text: tContinueText,
              onPressed: () {
                Get.toNamed('/reset_password_code');
              },
              buttonStyle: kOnboardingButtonStyle,
            )
          ],
        ),
      ),
    );
  }
}
