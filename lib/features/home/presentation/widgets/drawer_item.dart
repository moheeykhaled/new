import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading:
          Icon(icon, color: Theme.of(context).colorScheme.onPrimary, size: 25),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 18),
      ),
    );
  }
}
