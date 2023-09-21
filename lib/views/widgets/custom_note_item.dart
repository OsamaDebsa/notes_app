import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

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
                color: Colors.orangeAccent),
            padding: const EdgeInsets.only(top: 24, bottom: 24, left: 24),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text(
                      "Flutter Tips",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                      ),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.delete,
                          size: 35,
                          color: Colors.black,
                        )),
                    subtitle: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        "datadatadatada tadatadatadat adat a",
                        style: TextStyle(
                            color: Colors.black.withOpacity(.4), fontSize: 18),
                        maxLines: 2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "data data data",
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
