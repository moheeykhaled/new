import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.animation,
  });

  final Animation<Offset> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, _) {
        return SlideTransition(
          position: animation,
          child: Text(
          "slogan".tr(),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        );
      },
    );
  }
}
