import 'package:bookly/core/utils/layout/app_size.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomSettingBottomSheet extends StatelessWidget {
  const CustomSettingBottomSheet({super.key, this.onTap, required this.text});

  final Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        width: SizeOfScreen.screenWidth(context),
        alignment: context.locale.languageCode == "en"? Alignment.centerLeft: Alignment.centerRight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Theme.of(context).colorScheme.onPrimary, width: 1),
        ),
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
        ),
      ),
    );
  }
}
