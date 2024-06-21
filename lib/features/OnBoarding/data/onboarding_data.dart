import 'package:easy_localization/easy_localization.dart';

class OnBoardingData {
  String image;
  String firstText;
  String description;

  OnBoardingData(
      {required this.image,
      required this.firstText,
      required this.description});
}

List<OnBoardingData> content = [
  OnBoardingData(
      image: 'assets/images/onboarding/onboarding1.png',
      firstText: 'onboardingTitle1'.tr(),
      description: 'onboardingDescription1'.tr()),
  OnBoardingData(
      image: 'assets/images/onboarding/onboarding2.png',
      firstText: 'onboardingTitle2'.tr(),
      description: 'onboardingDescription2'.tr()),
  OnBoardingData(
      image: 'assets/images/onboarding/onboarding3.png',
      firstText: 'onboardingTitle3'.tr(),
      description: 'onboardingDescription3'.tr()),
];
