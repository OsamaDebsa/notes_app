import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
// import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // if you will use AddNoteCubit in all screens put here
        // else if you will use in only specific place put in that place
        // Ex. in AddNoteBottomSheet
        //  MultiBlocProvider(
        //   providers: [
        //     BlocProvider(
        //       create: (context) {
        //         return AddNoteCubit();
        //       },
        //     )
        //   ],
        //   child:
        MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // brightness: Brightness.light,
        // scaffoldBackgroundColor: Colors.white,
        brightness: Brightness.dark,
        fontFamily: "Poppins",
        useMaterial3: true,
      ),
      home: const NotesView(),
      //  ),
    );
  }
}
