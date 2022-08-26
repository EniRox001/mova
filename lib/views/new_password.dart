import 'package:flutter/material.dart';
import 'package:mova/utils/constants.dart';
import 'package:mova/utils/text_files.dart';
import 'package:mova/widgets.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(tNewPasswordMainText),
      ),
      body: Padding(
        padding: padLarge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              newPasswordLogo,
              height: imageHeightLarge,
              width: imageWidthLarge,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  tNewPasswordText,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            WInputField(
              controller: newPasswordController,
              prefixIcon: Icons.lock,
              hintText: tNewPasswordHintText,
              suffixIcon: Icons.visibility,
            ),
            WInputField(
              controller: confirmNewPasswordController,
              prefixIcon: Icons.lock,
              hintText: tNewPasswordConfirmHintText,
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
            SizedBox(
              height: spaceMedium,
            ),
            WElevatedButton(
              text: tContinueText,
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return const WAlertDialogWidget(
                        title: tNewPasswordCongratsMainText,
                        text: tNewPasswordCongratsText,
                      );
                    });
                Future.delayed(const Duration(seconds: 5), () {
                  //Close AlertDialog
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/home_page');
                });
              },
              buttonStyle: kOnboardingButtonStyle,
            ),
          ],
        ),
      ),
    );
  }
}
