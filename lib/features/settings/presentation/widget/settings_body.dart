import 'package:bookly/features/settings/manager/appsetting_cubit.dart';
import 'package:bookly/features/settings/presentation/widget/localization_bottomsheet.dart';
import 'package:bookly/features/settings/presentation/widget/theme_bottomsheet.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'custom_settings_bottom_sheet.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({Key? key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<AppsettingCubit>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "theme".tr(),
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
          const SizedBox(height: 10),
          CustomSettingBottomSheet(
            text: bloc.appTheme == ThemeMode.dark ? "dark".tr() : "light".tr(),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => const ThemeBottomSheet(),
              );
            },
          ),
          const SizedBox(height: 10),
          Text(
            "language".tr(),
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
          const SizedBox(height: 10),
          CustomSettingBottomSheet(
            text: context.locale.languageCode == "en" ? "english".tr() : "arabic".tr(),
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => const LocalizationBottomSheet());
            },
          ),
        ],
      ),
    );
  }
}
