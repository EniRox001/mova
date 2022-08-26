import 'package:flutter/material.dart';
import 'package:mova/utils/constants.dart';
import 'package:mova/widgets.dart';
import 'package:mova/utils/text_files.dart';

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
                Navigator.pushNamed(context, '/reset_password_code');
              },
              buttonStyle: kOnboardingButtonStyle,
            )
          ],
        ),
      ),
    );
  }
}
