import 'package:mova/imports.dart';

class Interest extends StatefulWidget {
  const Interest({Key? key}) : super(key: key);

  @override
  State<Interest> createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  void setSelectedButton(int index) {
    setState(() {
      selectedButton = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          tChooseYourInterest,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          spaceMedium,
          spaceNull,
          spaceMedium,
          spaceMedium,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tChooseYourInterestText,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(
              height: spaceMedium,
            ),
            Expanded(
              child: Wrap(
                alignment: WrapAlignment.start,
                runSpacing: spaceSemiSmall,
                spacing: spaceSemiSmall,
                children: [
                  for (int i = 0; i < tChooseInterest.length; i++)
                    WChooseInterestWidget(
                      text: tChooseInterest[i],
                      onTap: () {
                        setSelectedButton(i);
                        tChosenInterest.contains(tChooseInterest[i])
                            ? tChosenInterest.remove(tChooseInterest[i])
                            : tChosenInterest.add(tChooseInterest[i]);
                      },
                      buttonColor: selectedButton == 99
                          ? LightColorTheme().mainBackgroundColorFaded
                          : tChosenInterest.contains(tChooseInterest[i])
                              ? Colors.red
                              : Colors.white,
                      textStyle: selectedButton == 99
                          ? kUnselectedInterestStyle
                          : tChosenInterest.contains(tChooseInterest[i])
                              ? kSelectedInterestStyle
                              : kUnselectedInterestStyle,
                    ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: WElevatedButton(
                    text: tSkipText,
                    onPressed: () {
                      Get.toNamed('/edit_profile');
                    },
                    buttonStyle: kInactiveButtonStyle,
                    textStyle: kMainColorStyle,
                  ),
                ),
                SizedBox(
                  width: spaceSemiSmall,
                ),
                Expanded(
                  child: WElevatedButton(
                    text: tContinueText,
                    onPressed: () {
                      Get.toNamed('/edit_profile');
                    },
                    buttonStyle: kOnboardingButtonStyle,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
