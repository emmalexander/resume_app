import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget(
      {Key? key,
      required this.icon,
      required this.color,
      required this.title,
      this.subtitle,
      this.iconSize = 26})
      : super(key: key);
  final IconData icon;
  final Color color;
  final Widget title;
  final Widget? subtitle;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: iconSize,
        color: color,
      ),
      title: title,
      subtitle: subtitle,
    );
  }
}
