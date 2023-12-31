import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTab});
  final IconData icon;
  final String title;
  final VoidCallback onTab;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Text(title),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CustomIcon(icon: icon, onTab: onTab),
        )
      ],
    );
  }
}
