import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TSettingsMenuTile extends StatelessWidget {
  final IconData icon;
  final String title, subtitle;
  final Widget? trailing;
  final VoidCallback? onTab;

  const TSettingsMenuTile(
      {Key? key,
      required this.icon,
      required this.title,
      required this.subtitle,
      this.trailing, this.onTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: TColors.primaryColor,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.bodySmall,
      ),
      trailing: trailing,
      onTap: onTab,
    );
  }
}
