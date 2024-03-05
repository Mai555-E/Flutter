
import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String subTitle;
  @HiveField(1)
  final String date;
  @HiveField(2)
  late final int color;
  @HiveField(3)
  final String title;

  NoteModel({required this.color, required this.date, required this.subTitle, required this.title});
}
