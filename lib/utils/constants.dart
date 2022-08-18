import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final padSmall = EdgeInsets.all(8.0.sp);
final padMedium = EdgeInsets.all(16.0.sp);
final padLarge = EdgeInsets.all(24.0.sp);

final spaceSmall = 8.0.h;
final spaceMedium = 16.0.h;
final spaceLarge = 24.0.h;
final spaceLargest = 36.0.h;

const loginImage = 'assets/images/login.png';

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
bool isLastPage = false;
final kOnboardingHeadingTextStyle = TextStyle(
  fontSize: 35.0.sp,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);
final kOnboardingButtonStyle = ElevatedButton.styleFrom(
  primary: const Color(0xFFE21221),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(200.0.sp),
  ),
);
final kOnboardingSubtitleTextStyle = TextStyle(
  fontSize: 20.0.sp,
  color: Colors.white,
);

const kloginAltStyle = TextStyle(
  color: Colors.red,
);

const kOnboardingbuttonTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
);
