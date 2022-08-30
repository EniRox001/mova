import 'package:mova/imports.dart';

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
              onPressed: () {
                Get.toNamed('/home_page');
              },
              buttonStyle: kOnboardingButtonStyle,
            )
          ],
        ),
      ),
    );
  }
}
