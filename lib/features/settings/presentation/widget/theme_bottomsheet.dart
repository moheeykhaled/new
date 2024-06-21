import 'package:bookly/features/settings/manager/appsetting_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<AppsettingCubit>(context);
    return Wrap(
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.light_mode,
            size: 20,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          title: Text('light'.tr(),
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.onPrimary)),
          trailing: bloc.appTheme == ThemeMode.light
              ? Icon(
                  Icons.check,
                  size: 25,
                  color: Theme.of(context).colorScheme.onPrimary,
                )
              : const SizedBox.shrink(),
          onTap: () {
            bloc.changeTheme(ThemeMode.light);
            bloc.savingTheme(ThemeMode.light);
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(
            Icons.dark_mode,
            size: 20,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          title: Text('dark'.tr(),
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.onPrimary)),
          trailing: bloc.appTheme == ThemeMode.dark
              ? Icon(
                  Icons.check,
                  size: 22,
                  color: Theme.of(context).colorScheme.onPrimary,
                )
              : const SizedBox.shrink(),
          onTap: () {
            bloc.changeTheme(ThemeMode.dark);
            bloc.savingTheme(ThemeMode.light);
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
