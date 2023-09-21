import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.actionIcon, required this.appBarTitle});
  final Widget actionIcon;
  final String appBarTitle;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(appBarTitle),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: actionIcon,
        )
      ],
    );
  }
}
