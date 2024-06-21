import 'package:bookly/features/OnBoarding/presentations/view/widgets/onboarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingBody(),
    );
  }
}
