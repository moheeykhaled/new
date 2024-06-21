import 'package:bookly/config/router/routes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OnboardingLoginButton extends StatelessWidget {
  const OnboardingLoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      width: MediaQuery.of(context).size.width * .3,
      height: MediaQuery.of(context).size.height * 0.06,
      child: TextButton(
        child: Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Row(
            children: [
              Text(
                'home'.tr(),
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 15),
              ),
              const SizedBox(
                width: 7,
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              )
            ],
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.home);
        },
      ),
    );
  }
}
