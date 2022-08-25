import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/gestures.dart';

class WElevatedButton extends StatelessWidget {
  const WElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.buttonStyle,
    this.textStyle = kOnboardingbuttonTextStyle,
  }) : super(key: key);

  final String text;
  final Function() onPressed;
  final ButtonStyle buttonStyle;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: buttonStyle,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(24.0.sp),
              child: Text(
                text,
                style: textStyle,
              ),
            ),
          ],
        ));
  }
}

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    Key? key,
    required this.controller,
    required this.onboardingImage,
    required this.onboardingTitle,
    required this.onboardingSubtitle,
    required this.onboardingButtonText,
  }) : super(key: key);

  final PageController controller;
  final String onboardingImage;
  final String onboardingTitle;
  final String onboardingSubtitle;
  final String onboardingButtonText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(onboardingImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0x00000000),
                Color(0xCC000000),
              ],
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: padLarge,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  onboardingTitle,
                  style: kOnboardingHeadingTextStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: spaceLarge,
                ),
                Text(
                  onboardingSubtitle,
                  style: kOnboardingSubtitleTextStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: spaceMedium,
                ),
                WPageIndicator(controller: controller),
                SizedBox(
                  height: spaceMedium,
                ),
                isLastPage
                    ? WElevatedButton(
                        text: onboardingButtonText,
                        onPressed: () async {
                          final prefs = await SharedPreferences.getInstance();
                          prefs.setBool("showHome", true);
                          // ignore: use_build_context_synchronously
                          Navigator.pushNamed(context, '/login_signup');
                        },
                        buttonStyle: kOnboardingButtonStyle,
                      )
                    : WElevatedButton(
                        text: onboardingButtonText,
                        onPressed: () {
                          controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        buttonStyle: kOnboardingButtonStyle,
                      )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class WPageIndicator extends StatelessWidget {
  const WPageIndicator({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: ExpandingDotsEffect(
        expansionFactor: 4.0,
        dotWidth: 12.0.w,
        dotHeight: 12.0.h,
        activeDotColor: const Color(0xFFE21221),
      ),
      onDotClicked: (index) => controller.animateToPage(
        index,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      ),
    );
  }
}

class WLoginButtonLarge extends StatelessWidget {
  const WLoginButtonLarge({
    Key? key,
    required this.logo,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String logo;
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(spaceMedium),
          ),
          primary: whiteBackgroundColor,
          side: const BorderSide(
            color: Colors.black26,
          )),
      onPressed: onPressed,
      child: Padding(
        padding: padMedium,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              logo,
              height: 40.0.h,
            ),
            SizedBox(
              width: spaceSemiSmall,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}

class WLoginButtonSmall extends StatelessWidget {
  const WLoginButtonSmall({
    Key? key,
    required this.logo,
    required this.onPressed,
  }) : super(key: key);

  final String logo;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              spaceSemiSmall,
            ),
          ),
          primary: Colors.white,
          side: const BorderSide(
            color: Colors.black26,
          )),
      onPressed: onPressed,
      child: Padding(
        padding: padMedium,
        child: Image.asset(
          logo,
          height: spaceLarge,
        ),
      ),
    );
  }
}

class WTextDivider extends StatelessWidget {
  const WTextDivider({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: Divider(
            color: Colors.black26,
            thickness: 1.0,
          ),
        ),
        SizedBox(
          width: spaceMedium,
        ),
        Text(text),
        SizedBox(
          width: spaceMedium,
        ),
        const Expanded(
          child: Divider(
            color: Colors.black26,
            thickness: 1.0,
          ),
        ),
      ],
    );
  }
}

class WInlineAltText extends StatelessWidget {
  const WInlineAltText({
    Key? key,
    required this.altTextOne,
    required this.altTextTwo,
    required this.onPressed,
  }) : super(key: key);

  final String altTextOne;
  final String altTextTwo;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: altTextOne,
          style: Theme.of(context).textTheme.bodySmall,
          children: [
            TextSpan(
                text: altTextTwo,
                style: kloginAltStyle,
                recognizer: TapGestureRecognizer()..onTap = onPressed)
          ]),
    );
  }
}

class WInputField extends StatelessWidget {
  const WInputField({
    Key? key,
    required this.controller,
    required this.prefixIcon,
    required this.hintText,
    required this.suffixIcon,
  }) : super(key: key);

  final TextEditingController controller;
  final IconData prefixIcon;
  final String hintText;
  final IconData suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Colors.red,
            ),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(17.0.sp),
          ),
          filled: true,
          fillColor: const Color(0xFFFAFAFA),
          prefixIcon: Icon(
            prefixIcon,
          ),
          suffixIcon: suffixIcon == Icons.nat
              ? const SizedBox()
              : IconButton(
                  onPressed: () {},
                  icon: Icon(suffixIcon, size: 24.sp),
                ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.black38,
            fontSize: 16.0.sp,
            fontWeight: FontWeight.bold,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFE21221)),
            borderRadius: BorderRadius.circular(10.0.sp),
          ),
        ),
      ),
    );
  }
}

class WStockInputField extends StatelessWidget {
  const WStockInputField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.suffixIcon,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final IconData suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Colors.red,
            ),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(17.0.sp),
          ),
          filled: true,
          fillColor: const Color(0xFFFAFAFA),
          suffixIcon: suffixIcon == Icons.nat
              ? const SizedBox()
              : IconButton(
                  onPressed: () {},
                  icon: Icon(suffixIcon, size: 24.sp),
                ),
          contentPadding: padLarge,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.black38,
            fontSize: 16.0.sp,
            fontWeight: FontWeight.bold,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFE21221)),
            borderRadius: BorderRadius.circular(10.0.sp),
          ),
        ),
      ),
    );
  }
}

class WPhoneInputField extends StatelessWidget {
  const WPhoneInputField({
    Key? key,
    required this.controller,
    required this.prefixIcon,
    required this.hintText,
    required this.onTap,
    required this.prefixText,
  }) : super(key: key);

  final TextEditingController controller;
  final String prefixIcon;
  final String hintText;
  final Function() onTap;
  final String prefixText;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Colors.red,
            ),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(17.0.sp),
          ),
          filled: true,
          fillColor: const Color(0xFFFAFAFA),
          prefixIcon: TextButton(
            onPressed: onTap,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  prefixIcon,
                  style: TextStyle(
                    fontSize: 24.0.sp,
                  ),
                ),
                const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black26,
                ),
              ],
            ),
          ),
          contentPadding: padLarge,
          prefix: Text(prefixText),
          hintText: hintText,
          hintStyle: kHintTextStyle,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFE21221)),
            borderRadius: BorderRadius.circular(10.0.sp),
          ),
        ),
      ),
    );
  }
}

class WChooseInterestWidget extends StatelessWidget {
  const WChooseInterestWidget({
    Key? key,
    required this.text,
    required this.onTap,
    required this.buttonColor,
    required this.textStyle,
  }) : super(key: key);

  final String text;
  final Function() onTap;
  final Color buttonColor;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: buttonColor,
        shape: const StadiumBorder(),
        side: BorderSide(
          color: mainbackgroundColor,
          width: 2.0,
        ),
      ),
      onPressed: onTap,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}

class WDropdownGender extends StatelessWidget {
  const WDropdownGender({
    Key? key,
    required this.onPressed,
    required this.value,
    required this.list,
  }) : super(key: key);

  final String value;
  final List<String> list;
  final Function(String?) onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: greyFadedBackgroundColor,
        borderRadius: BorderRadius.circular(17.0.sp),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: spaceMedium,
          vertical: spaceSmall,
        ),
        child: DropdownButton<String>(
          value: value,
          icon: const Icon(Icons.arrow_drop_down),
          elevation: spaceSmall.toInt(),
          style: TextStyle(color: blackBackgroundColor),
          underline: const SizedBox(),
          onChanged: onPressed,
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          isExpanded: true,
        ),
      ),
    );
  }
}

class WCircleAvatar extends StatelessWidget {
  const WCircleAvatar({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: imageWidthSmall,
        backgroundColor: blackFadedBackgroundColor,
        backgroundImage: AssetImage(
          imagePath,
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  radius: spaceMedium,
                  backgroundColor: mainbackgroundColor,
                  child: Icon(
                    Icons.edit,
                    color: whiteBackgroundColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
