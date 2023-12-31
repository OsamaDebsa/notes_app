import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 10),
          CustomTextFormField(
            hintText: "Title",
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 20),
          CustomTextFormField(
            hintText: "Content",
            maxLines: 5,
            onSaved: (value) {
              content = value;
            },
          ),
          const SizedBox(height: 20),
          const ColorsListView(),
          const SizedBox(height: 20),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                  buttonTitle: "Add",
                  isLoading: state is AddNoteLoading ? true : false,
                  onTab: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      var noteModel = NoteModel(
                          title: title!,
                          content: content!,
                          date: dateTimeFormat(),
                          color: Colors.blue.value);
                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  });
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  String dateTimeFormat() {
    DateTime currentDate = DateTime.now();
    // return "${currentDate.day}-${currentDate.month}-${currentDate.year}";
    // using intl package:
    // return DateFormat.yMd().format(currentDate);
    return DateFormat("dd-MM-yyyy").format(currentDate);
  }
}
