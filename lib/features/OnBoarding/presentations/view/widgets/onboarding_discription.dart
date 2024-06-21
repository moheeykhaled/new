import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../data/onboarding_data.dart';

class OnboardingDiscription extends StatefulWidget {
  const OnboardingDiscription({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State<OnboardingDiscription> createState() => _OnboardingDiscriptionState();
}

class _OnboardingDiscriptionState extends State<OnboardingDiscription> {
  @override
  Widget build(BuildContext context) {
    return Text(
      content[widget.index].description,
      style: Theme
          .of(context)
          .textTheme
          .bodyLarge!
          .copyWith(
          fontFamily: GoogleFonts.montserrat.toString(),
          fontSize: 16,
          fontWeight: FontWeight.bold),
    );
  }
}
