import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsCustomAppBar extends StatelessWidget {
  const DetailsCustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            FontAwesomeIcons.circleArrowLeft,
            size: 25,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
