import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const CustomTextField(hintText: "Title"),
            const SizedBox(height: 20),
            const CustomTextField(hintText: "Content", maxLines: 5),
            const SizedBox(height: 40),
            CustomButton(buttonTitle: "Add", onTab: () {}),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
