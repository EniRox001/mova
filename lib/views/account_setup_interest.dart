import 'package:flutter/material.dart';
import 'package:mova/utils/constants.dart';
import 'package:mova/utils/text_files.dart';
import 'package:mova/widgets.dart';

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
        title: Text(
          tChooseYourInterest,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Padding(
        padding: padLarge,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tChooseYourInterestText,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(
              height: spaceLargest,
            ),
            Wrap(
              alignment: WrapAlignment.start,
              runSpacing: spaceMedium,
              spacing: spaceMedium,
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
                        ? mainBackgroundColorFaded
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: WElevatedButton(
                    text: tChooseInterestSkip,
                    onPressed: () {
                      Navigator.pushNamed(context, '/edit_profile');
                    },
                    buttonStyle: kInactiveButtonStyle,
                    textStyle: kMainColorStyle,
                  ),
                ),
                SizedBox(
                  width: spaceMedium,
                ),
                Expanded(
                  child: WElevatedButton(
                    text: tChooseInterestContinue,
                    onPressed: () {
                      Navigator.pushNamed(context, '/edit_profile');
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
