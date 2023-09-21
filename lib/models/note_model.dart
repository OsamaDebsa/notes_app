import 'package:hive/hive.dart';

part 'note_model.g.dart';

// at first write your model then write @HiveType(typeId: ) and @HiveField() then
// write part''; then it will give with me error and run this line in trminal :
// flutter packages pub run build_runner build
// an then go to main to make init hive and open notes box

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String content;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel({
    required this.title,
    required this.content,
    required this.date,
    required this.color,
  });
}
