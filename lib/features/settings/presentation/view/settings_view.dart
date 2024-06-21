import 'package:bookly/features/settings/presentation/widget/settings_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              FontAwesomeIcons.circleArrowLeft,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
        body: const SettingsBody(),
      ),
    );
  }
}
