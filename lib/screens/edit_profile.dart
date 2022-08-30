import 'package:mova/imports.dart';

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
        title: const Text(
          "Fill Your Profile",
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
                    text: tSkipText,
                    onPressed: () {
                      Get.toNamed('/setup_pin');
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
                      Get.toNamed('/setup_pin');
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
