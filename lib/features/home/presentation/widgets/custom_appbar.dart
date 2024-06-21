import 'package:bookly/config/router/routes.dart';
import 'package:bookly/core/utils/images/images.dart';
import 'package:bookly/core/utils/layout/app_size.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(
            size: 25,
            color: Theme.of(context).colorScheme.onPrimary,
            FontAwesomeIcons.listUl,
          ),
        ),
        SizedBox(
          child: Image.asset(
            Theme.of(context).brightness == Brightness.dark
                ? AppImages.logo
                : AppImages.lightLogo,
            width: SizeOfScreen.getWidth(100, context),
            height: SizeOfScreen.getHeight(40, context),
            fit: BoxFit.fitWidth,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.search);
          },
          icon: Icon(
            size: 25,
            color: Theme.of(context).colorScheme.onPrimary,
            FontAwesomeIcons.magnifyingGlass,
          ),
        )
      ],
    );
  }
}
