import 'package:flutter/material.dart';
import 'package:mova/utils/constants.dart';
import 'package:mova/utils/text_files.dart';
import 'package:mova/widgets.dart';
import 'package:country_picker/country_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Fill Your Profile",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Padding(
        padding: padLarge,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const WCircleAvatar(
              imagePath: imageStockLogo,
            ),
            WStockInputField(
              controller: fullNameController,
              hintText: 'Full Name',
              suffixIcon: Icons.nat,
            ),
            WStockInputField(
              controller: nickNameController,
              hintText: 'Nickname',
              suffixIcon: Icons.nat,
            ),
            WStockInputField(
              controller: emailController,
              hintText: 'Email',
              suffixIcon: Icons.email,
            ),
            WPhoneInputField(
              controller: phoneNumberController,
              prefixIcon: initCountryFlag,
              prefixText: initCountryNumber,
              hintText: 'Phone Number',
              onTap: () {
                showCountryPicker(
                    context: context,
                    countryListTheme: kCountryListStyle,
                    onSelect: (Country country) {
                      setState(() {
                        initCountryNumber = "+${country.phoneCode} ";
                        initCountryFlag = country.flagEmoji;
                      });
                    });
              },
            ),
            WDropdownGender(
              value: genders[0],
              list: genders,
              onPressed: (String? newValue) {
                setState(() {
                  initGender = newValue!;
                });
              },
            ),
            SizedBox(
              height: spaceLargest,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: WElevatedButton(
                    text: tChooseInterestSkip,
                    onPressed: () {
                      Navigator.pushNamed(context, '/setup_pin');
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
                    text: tChooseInterestContinue,
                    onPressed: () {
                      Navigator.pushNamed(context, '/setup_pin');
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
