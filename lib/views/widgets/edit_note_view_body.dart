import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              icon: Icons.done,
              title: "Edit Note",
              onTab: () {
                widget.noteModel.title = title ?? widget.noteModel.title;
                widget.noteModel.content = content ?? widget.noteModel.content;
                widget.noteModel.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(14),
              child: CustomTextFormField(
                hintText: widget.noteModel.title,
                onChanged: (value) {
                  title = value;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: CustomTextFormField(
                hintText: widget.noteModel.content,
                maxLines: 5,
                onChanged: (value) {
                  content = value;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
