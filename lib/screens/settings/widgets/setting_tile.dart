import 'package:flutter/material.dart';

class SettingTile extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final Widget imagelogo;
  final Widget? icon;
  const SettingTile({super.key, required this.title, required this.imagelogo, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(vertical: -4),
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 24,),
      leading: imagelogo,
      title: Text(title),
      horizontalTitleGap: 0,
      trailing: icon != null ? icon! : null,
    );
  }
}
