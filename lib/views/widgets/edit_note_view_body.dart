import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(icon: Icons.done, title: "Edit Note"),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.all(14),
              child: CustomTextField(hintText: "Title"),
            ),
            Padding(
              padding: EdgeInsets.all(14),
              child: CustomTextField(hintText: "Content", maxLines: 5),
            ),
          ],
        ),
      ),
    );
  }
}
