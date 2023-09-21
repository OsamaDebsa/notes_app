import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(title),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: CustomIcon(icon: icon),
        )
      ],
    );
  }
}
