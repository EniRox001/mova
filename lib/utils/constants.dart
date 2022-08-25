import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Variables Constants

int selectedButton = 0;
bool isLastPage = false;
bool rememberMe = false;
bool changeInterestColor = false;

// Controller Constants

final signUpEmailController = TextEditingController();
final signUpPasswordController = TextEditingController();
final loginEmailController = TextEditingController();
final loginPasswordController = TextEditingController();

//Color Constants

Color blackBackgroundColor = Colors.black;
Color whiteBackgroundColor = Colors.white;
Color fadedbackgroundColor = const Color(0xFFFCE7E9);
Color mainbackgroundColor = const Color(0xFFE21221);
Color mainBackgroundColorFaded = const Color(0xFFFDECEE);

//Padding Constants

final padSmall = EdgeInsets.all(8.0.sp);
final padSemiSmall = EdgeInsets.all(12.0.sp);
final padMedium = EdgeInsets.all(16.0.sp);
final padLarge = EdgeInsets.all(24.0.sp);

//Spacing Constants

final spaceSmall = 8.0.h;
final spaceMedium = 16.0.h;
final spaceLarge = 24.0.h;
final spaceLargest = 36.0.h;

//Image Dimension Constants

final imageHeightLargest = 300.0.h;
final imageWidthLargest = 300.0.w;
final imageHeightLarge = 200.0.h;
final imageWidthLarge = 200.0.w;

//Image Path Constants

const kLoginImage = 'assets/images/login.png';
const kMainLogo = 'assets/images/main_logo.png';

var kOnboardingImage = [
  'assets/images/onboarding_bg_one.jpg',
  'assets/images/onboarding_bg_two.jpg',
  'assets/images/onboarding_bg_three.jpg',
];

const kLoginButtonImages = [
  'assets/logo/facebook.png',
  'assets/logo/google.png',
  'assets/logo/apple-logo.png'
];

//TextStyle Constants

final kOnboardingHeadingTextStyle = TextStyle(
  fontSize: 35.0.sp,
  fontWeight: FontWeight.w600,
  color: whiteBackgroundColor,
);

final kLargeText = TextStyle(
  fontSize: 36.0.sp,
  fontWeight: FontWeight.w900,
);

final kOnboardingSubtitleTextStyle = TextStyle(
  fontSize: 20.0.sp,
  color: whiteBackgroundColor,
);

final kloginAltStyle = TextStyle(
  color: mainbackgroundColor,
);

const kOnboardingbuttonTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

final kMainColorStyle = TextStyle(
  color: mainbackgroundColor,
  fontWeight: FontWeight.bold,
);

final kForgotPasswordTextStyle = TextStyle(
  color: mainbackgroundColor,
  fontWeight: FontWeight.bold,
);

final kUnselectedInterestStyle = TextStyle(
  fontSize: 24.0.sp,
  color: mainbackgroundColor,
);

final kSelectedInterestStyle = TextStyle(
  fontSize: 24.0.sp,
  color: whiteBackgroundColor,
);

//WidgetStyles Constants

final kOnboardingButtonStyle = ElevatedButton.styleFrom(
  elevation: 0,
  primary: mainbackgroundColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(200.0.sp),
  ),
);

final kInactiveButtonStyle = ElevatedButton.styleFrom(
  elevation: 0,
  primary: fadedbackgroundColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(200.0.sp),
  ),
);

final kCheckboxShapeStyle =
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0));

final kCheckboxSideStyle = BorderSide(
  color: mainbackgroundColor,
  width: 3.0,
  style: BorderStyle.solid,
);
