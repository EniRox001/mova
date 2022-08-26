import 'package:flutter/material.dart';
import 'package:mova/utils/constants.dart';
import 'package:mova/widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SetupPin extends StatelessWidget {
  const SetupPin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create New Pin',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Padding(
        padding: padLarge,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Add a PIN number to make your account more secure',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            PinCodeTextField(
              appContext: context,
              length: 4,
              onChanged: (String value) {},
              enableActiveFill: true,
              showCursor: false,
              pinTheme: PinTheme(
                activeColor: Colors.transparent,
                selectedColor: mainbackgroundColor,
                activeFillColor: greyFadedBackgroundColor,
                inactiveFillColor: greyFadedBackgroundColor,
                selectedFillColor: fadedbackgroundColor,
                inactiveColor: Colors.transparent,
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(spaceSmall),
                fieldHeight: spaceSemiMassive,
                fieldWidth: spaceSemiMassive,
              ),
            ),
            WElevatedButton(
              text: 'Continue',
              onPressed: () {},
              buttonStyle: kOnboardingButtonStyle,
            )
          ],
        ),
      ),
    );
  }
}
