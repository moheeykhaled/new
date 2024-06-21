import 'package:bookly/features/settings/manager/appsetting_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocalizationBottomSheet extends StatelessWidget {
  const LocalizationBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<AppsettingCubit>(context);
    return Wrap(
      children: <Widget>[
        ListTile(
          title: Text('English',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.onPrimary)),
          trailing: context.locale.languageCode == "en"
              ? Icon(
                  Icons.check,
                  size: 25,
                  color: Theme.of(context).colorScheme.onPrimary,
                )
              : const SizedBox.shrink(),
          onTap: () {
            context.setLocale(const Locale("en", "US"));
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Arabic',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.onPrimary)),
          trailing: context.locale.languageCode == "ar"
              ? Icon(
                  Icons.check,
                  size: 22,
                  color: Theme.of(context).colorScheme.onPrimary,
                )
              : const SizedBox.shrink(),
          onTap: () {
            context.setLocale(const Locale("ar", "EG"));
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
