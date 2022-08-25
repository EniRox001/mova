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
  int _selectedButton = 0;
  void setSelectedButton(int index) {
    setState(() {
      _selectedButton = index;
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
                    buttonColor: _selectedButton == 99
                        ? mainBackgroundColorFaded
                        : tChosenInterest.contains(tChooseInterest[i])
                            ? Colors.red
                            : Colors.white,
                    textStyle: _selectedButton == 99
                        ? kUnselectedInterestStyle
                        : tChosenInterest.contains(tChooseInterest[i])
                            ? kSelectedInterestStyle
                            : kUnselectedInterestStyle,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
