import 'package:flutter/material.dart';
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
  }) : super(key: key);

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: kOnboardingButtonStyle,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(24.0.sp),
              child: Text(
                text,
                style: kOnboardingbuttonTextStyle,
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
                  height: spaceLargest,
                ),
                Text(
                  onboardingSubtitle,
                  style: kOnboardingSubtitleTextStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: spaceLarge,
                ),
                WPageIndicator(controller: controller),
                SizedBox(
                  height: spaceLarge,
                ),
                isLastPage
                    ? WElevatedButton(
                        text: onboardingButtonText,
                        onPressed: () async {
                          final prefs = await SharedPreferences.getInstance();
                          prefs.setBool("showHome", true);
                          // ignore: use_build_context_synchronously
                          Navigator.pushNamed(context, '/login_signup');
                        })
                    : WElevatedButton(
                        text: onboardingButtonText,
                        onPressed: () {
                          controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        })
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
            borderRadius: BorderRadius.circular(spaceLarge),
          ),
          primary: Colors.white,
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
              width: spaceMedium,
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
              spaceMedium,
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
          height: spaceLargest,
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
          width: spaceLarge,
        ),
        Text(text),
        SizedBox(
          width: spaceLarge,
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
          prefixIcon: Icon(prefixIcon, size: 24.sp),
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
