import 'package:mova/imports.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          setState(() => isLastPage = index == 2);
        },
        children: [
          for (int i = 0; i < 3; i++)
            OnboardingWidget(
              controller: controller,
              onboardingImage: kOnboardingImage[i],
              onboardingTitle: tOnboardingTitle[i],
              onboardingSubtitle: tOnboardingSubtitle[i],
              onboardingButtonText: tOnboardingButtonText[i],
            ),
        ],
      ),
    );
  }
}
