import 'package:mova/imports.dart';

// Variables Constants

int selectedButton = 0;
bool isLastPage = false;
bool rememberMe = false;
bool changeInterestColor = false;
String initCountryFlag = '🇳🇬';
String initCountryNumber = '234 ';

// Controller Constants

final signUpEmailController = TextEditingController();
final signUpPasswordController = TextEditingController();
final loginEmailController = TextEditingController();
final loginPasswordController = TextEditingController();
final fullNameController = TextEditingController();
final nickNameController = TextEditingController();
final emailController = TextEditingController();
final phoneNumberController = TextEditingController();
final pinController = TextEditingController();
final resetPasswordEmailController = TextEditingController();
final resetPasswordPinController = TextEditingController();
final newPasswordController = TextEditingController();
final confirmNewPasswordController = TextEditingController();

//Color Constants
class LightColorTheme {
  Color blackBackgroundColor = Colors.black;
  Color blackFadedBackgroundColor = Colors.black12;
  Color greyFadedBackgroundColor = const Color(0xFFFAFAFA);
  Color whiteBackgroundColor = Colors.white;
  Color fadedbackgroundColor = const Color(0xFFFCE7E9);
  Color mainbackgroundColor = const Color(0xFFE21221);
  Color mainBackgroundColorFaded = const Color(0xFFFDECEE);
}

//Padding Constants

final padSmall = EdgeInsets.all(8.0.sp);
final padSemiSmall = EdgeInsets.all(12.0.sp);
final padMedium = EdgeInsets.all(16.0.sp);
final padLarge = EdgeInsets.all(24.0.sp);

//Spacing Constants

final spaceNull = 0.0.sp;
final spaceSmall = 8.0.sp;
final spaceSemiSmall = 16.0.sp;
final spaceMedium = 24.0.sp;
final spaceSemiMedium = 32.0.sp;
final spaceLarge = 40.0.sp;
final spaceSemiLarge = 48.0.sp;
final spaceLargest = 56.0.sp;
final spaceSemiMassive = 100.0.sp;
final spaceMassive = 100.0.sp;

//Image Dimension Constants

final imageHeightLargest = 300.0.h;
final imageWidthLargest = 300.0.w;
final imageHeightSemiLarge = 250.0.h;
final imageWidthSemiLarge = 250.0.w;
final imageHeightLarge = 200.0.h;
final imageWidthLarge = 200.0.w;
final imageHeightMedium = 100.0.h;
final imageWidthMedium = 100.0.w;
final imageHeightSemiMedium = 75.0.h;
final imageWidthSemiMedium = 75.0.w;
final imageHeightSmall = 50.0.h;
final imageWidthSmall = 50.0.w;

//Image Path Constants

const kLoginImage = 'assets/images/login.png';
const kMainLogo = 'assets/images/main_logo.png';
const imageStockLogo = 'assets/images/account_profile.png';
const resetPasswordLogo = 'assets/images/forgot_pasword.png';
const newPasswordLogo = 'assets/images/new_password.png';
const congratsPasswordLogo = 'assets/images/congrats.png';
const featuredVideoImageOne =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ5IuxfEt-WmUIrpJldszdRJFfTubSEeQVMVNuv63Z0PNfvbWV';

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

class TextStyles {}

final kOnboardingHeadingTextStyle = TextStyle(
  fontSize: 35.0.sp,
  fontWeight: FontWeight.w600,
  color: LightColorTheme().whiteBackgroundColor,
);

final kLargeText = TextStyle(
  fontSize: 36.0.sp,
  fontWeight: FontWeight.w900,
);

final kOnboardingSubtitleTextStyle = TextStyle(
  fontSize: 20.0.sp,
  color: LightColorTheme().whiteBackgroundColor,
);

final kloginAltStyle = TextStyle(
  color: LightColorTheme().mainbackgroundColor,
);

const kOnboardingbuttonTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

final kMainColorStyle = TextStyle(
  color: LightColorTheme().mainbackgroundColor,
  fontWeight: FontWeight.bold,
);

final kForgotPasswordTextStyle = TextStyle(
  color: LightColorTheme().mainbackgroundColor,
  fontWeight: FontWeight.bold,
);

final kUnselectedInterestStyle = TextStyle(
  fontSize: 24.0.sp,
  color: LightColorTheme().mainbackgroundColor,
);

final kSelectedInterestStyle = TextStyle(
  fontSize: 24.0.sp,
  color: LightColorTheme().whiteBackgroundColor,
);

final kHintTextStyle = TextStyle(
  color: Colors.black38,
  fontSize: 16.0.sp,
  fontWeight: FontWeight.bold,
);

final kPlayButtonTextStyle = TextStyle(
  color: LightColorTheme().whiteBackgroundColor,
  fontSize: 16.0.sp,
);

final kFeaturedTitleStyle = TextStyle(
  color: LightColorTheme().whiteBackgroundColor,
  fontSize: 32.0.sp,
  fontWeight: FontWeight.bold,
);

final kSeeAllTextStyle = TextStyle(
  color: LightColorTheme().mainbackgroundColor,
  fontSize: 16.0.sp,
);

//WidgetStyles Constants

final kOnboardingButtonStyle = ElevatedButton.styleFrom(
  elevation: 0,
  primary: LightColorTheme().mainbackgroundColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(200.0.sp),
  ),
);

final kInactiveButtonStyle = ElevatedButton.styleFrom(
  elevation: 0,
  primary: LightColorTheme().fadedbackgroundColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(200.0.sp),
  ),
);

final kCheckboxShapeStyle =
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0));

final kCheckboxSideStyle = BorderSide(
  color: LightColorTheme().mainbackgroundColor,
  width: 3.0,
  style: BorderStyle.solid,
);

final kCountryPickerStyle = InputDecoration(
  border: OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(17.0.sp),
  ),
  filled: true,
  fillColor: const Color(0xFFFAFAFA),
  contentPadding: padLarge,
  hintText: 'Phone Number',
  hintStyle: TextStyle(
    color: Colors.black38,
    fontSize: 16.0.sp,
    fontWeight: FontWeight.bold,
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Color(0xFFE21221)),
    borderRadius: BorderRadius.circular(10.0.sp),
  ),
);

final kCountryListStyle = CountryListThemeData(
  flagSize: 25,
  backgroundColor: Colors.white,
  textStyle: const TextStyle(fontSize: 16, color: Colors.blueGrey),
  bottomSheetHeight: 500, // Optional. Country list modal height
  //Optional. Sets the border radius for the bottomsheet.
  borderRadius: const BorderRadius.only(
    topLeft: Radius.circular(20.0),
    topRight: Radius.circular(20.0),
  ),
  //Optional. Styles the search field.
  inputDecoration: InputDecoration(
    labelText: 'Search',
    hintText: 'Start typing to search',
    prefixIcon: const Icon(Icons.search),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: const Color(0xFF8C98A8).withOpacity(0.2),
      ),
    ),
  ),
);

final pinTheme = PinTheme(
  activeColor: Colors.transparent,
  selectedColor: LightColorTheme().mainbackgroundColor,
  activeFillColor: LightColorTheme().greyFadedBackgroundColor,
  inactiveFillColor: LightColorTheme().greyFadedBackgroundColor,
  selectedFillColor: LightColorTheme().fadedbackgroundColor,
  inactiveColor: Colors.transparent,
  shape: PinCodeFieldShape.box,
  borderRadius: BorderRadius.circular(spaceSmall),
  fieldHeight: spaceSemiMassive,
  fieldWidth: spaceSemiMassive,
);
