import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';

class EditNotesColorList extends StatefulWidget {
  const EditNotesColorList({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNotesColorList> createState() => _EditNotesColorListState();
}

class _EditNotesColorListState extends State<EditNotesColorList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColorsList.indexOf(Color(widget.noteModel.color));
    print(currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      child: ListView.builder(
        itemCount: kColorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.noteModel.color = kColorsList[index].value;
              setState(() {});
            },
            child: ColorItem(
              isSelected: currentIndex == index,
              color: kColorsList[index],
            ),
          );
        },
      ),
    );
  }
}
