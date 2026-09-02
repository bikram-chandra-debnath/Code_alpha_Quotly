import 'package:flutter/material.dart';

class AppListTile extends StatelessWidget {
  const AppListTile({
    super.key,
    required this.onPressed,
    required this.leadingIcon,
    required this.title,
    this.trailing,
  });

  final VoidCallback onPressed;
  final IconData leadingIcon;
  final String title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      splashColor: Colors.transparent,
      onTap: onPressed,
      contentPadding: EdgeInsets.all(0),
      leading: Icon(leadingIcon),
      title: Text(title, style: Theme.of(context).textTheme.bodyMedium),
      trailing: trailing,
    );
  }
}
