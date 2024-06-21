import 'package:bookly/config/router/routes.dart';
import 'package:bookly/core/utils/images/images.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/layout/app_size.dart';
import 'drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                child: Image.asset(
                  Theme.of(context).brightness == Brightness.dark
                      ? AppImages.logo
                      : AppImages.lightLogo,
                  width: SizeOfScreen.getWidth(100, context),
                  height: SizeOfScreen.getHeight(40, context),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const Gap(10),
            Divider(
              color: Colors.grey.withOpacity(.5),
              thickness: 2,
            ),
            const Gap(10),
            DrawerItem(
              icon: Icons.home_rounded,
              title: "home".tr(),
              onTap: () {
                Scaffold.of(context).closeDrawer();
              },
            ),
            const Gap(10),
            DrawerItem(
              icon: FontAwesomeIcons.magnifyingGlass,
              title: "search".tr(),
              onTap: () {
                Scaffold.of(context).closeDrawer();
                Navigator.pushNamed(context, AppRoutes.search);
              },
            ),
            const Gap(10),
            DrawerItem(
              icon: Icons.settings,
              title: "setting".tr(),
              onTap: () {
                Scaffold.of(context).closeDrawer();
                Navigator.pushNamed(context, AppRoutes.setting);
              },
            ),
          ],
        ),
      ),
    );
  }
}
