import 'package:flutter/material.dart';

import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const EditNoteView();
            },
          ));
        },
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color(noteModel.color)),
            padding: const EdgeInsets.only(top: 24, bottom: 24, left: 24),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      noteModel.title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                      ),
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          noteModel.delete();
                        },
                        icon: const Icon(
                          Icons.delete,
                          size: 35,
                          color: Colors.black,
                        )),
                    subtitle: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        noteModel.content,
                        style: TextStyle(
                            color: Colors.black.withOpacity(.4), fontSize: 18),
                        maxLines: 2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      noteModel.date,
                      style: TextStyle(
                          color: Colors.black.withOpacity(.4), fontSize: 16),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
