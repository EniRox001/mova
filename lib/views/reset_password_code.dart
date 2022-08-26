import 'package:flutter/material.dart';
import 'package:mova/utils/constants.dart';
import 'package:mova/utils/text_files.dart';
import 'package:mova/widgets.dart';

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
                Navigator.pushNamed(
                  context,
                  '/new_password',
                );
              },
              buttonStyle: kOnboardingButtonStyle,
            )
          ],
        ),
      ),
    );
  }
}
