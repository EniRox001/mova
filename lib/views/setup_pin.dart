import 'package:flutter/material.dart';
import 'package:mova/utils/constants.dart';
import 'package:mova/utils/text_files.dart';
import 'package:mova/widgets.dart';

class SetupPin extends StatelessWidget {
  const SetupPin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          tCreatePinMainText,
        ),
      ),
      body: Padding(
        padding: padLarge,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              tCreatePinText,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            WPinCodeTextField(onchanged: (value) {}, controller: pinController),
            WElevatedButton(
              text: tContinueText,
              onPressed: () {},
              buttonStyle: kOnboardingButtonStyle,
            )
          ],
        ),
      ),
    );
  }
}
