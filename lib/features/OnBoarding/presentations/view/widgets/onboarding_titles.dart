import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../data/onboarding_data.dart';

class OnboardingTitles extends StatefulWidget {
  const OnboardingTitles({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State<OnboardingTitles> createState() => _OnboardingTitlesState();
}

class _OnboardingTitlesState extends State<OnboardingTitles> {
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: content[widget.index].firstText,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontFamily: GoogleFonts.montserrat.toString(),
                  fontSize: 20,
                ),
          ),
        ],
      ),
    );
  }
}
