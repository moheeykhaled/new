import 'package:bookly/config/router/routes.dart';
import 'package:bookly/core/utils/images/images.dart';
import 'package:bookly/features/splash/presentation/view/widget/sliding_text.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    slidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          Theme.of(context).brightness == Brightness.dark ?
          AppImages.logo:
          AppImages.lightLogo,
        ),
        const SizedBox(
          height: 4,
        ),
        SlidingText(animation: animation)
      ],
    );
  }

  void slidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    animation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  Future<Object?> navigateToHome() {
    return Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.pushReplacementNamed(context, AppRoutes.home),
    );
  }
}
