import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: const Text("Notes"),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: CustomSearchIcon(),
        )
      ],
    );
  }
}
