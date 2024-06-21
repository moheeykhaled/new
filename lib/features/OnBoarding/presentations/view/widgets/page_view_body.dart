import 'package:flutter/material.dart';
import '../../../data/onboarding_data.dart';
import 'onboarding_discription.dart';
import 'onboarding_titles.dart';

class PageViewBody extends StatefulWidget {
  const PageViewBody({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State<PageViewBody> createState() => _PageViewBodyState();
}

class _PageViewBodyState extends State<PageViewBody> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    debugPrint("$width");
    debugPrint("$height");
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          content[widget.index].image,
          width: width,
          height: height / 3,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OnboardingTitles(
              index: widget.index,
            ),
            const SizedBox(
              height: 10,
            ),
            OnboardingDiscription(
              index: widget.index,
            ),
          ],
        )
      ],
    );
  }
}
