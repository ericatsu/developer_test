import 'package:flutter/material.dart';

class SettingTile extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final Widget imagelogo;
  final Icon? icon;
  const SettingTile({super.key, required this.title, required this.imagelogo, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 24),
      leading: imagelogo,
      title: Text(title),
      horizontalTitleGap: 0,
      trailing: icon!,
    );
  }
}

// class TileData {
//   final String title;
//   final Image image;
//   final CupertinoIcons? icon;
  
//   TileData(this.title, this.image, this.icon)
// }