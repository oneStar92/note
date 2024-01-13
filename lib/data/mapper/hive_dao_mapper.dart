import 'package:note/data/dao/note_hive_dao.dart';
import 'package:note/domain/model/note.dart';

extension NoteToDAO on Note {
  NoteHiveDAO toDAO() {
    return NoteHiveDAO(
      title: title,
      content: content,
      backgroundColor: backgroundColor,
      fontColor: fontColor,
      updateDate: updateDate ?? DateTime.now(),
    );
  }
}

extension DAOtoNote on NoteHiveDAO {
  Note toDomain() {
    return Note(
      primaryKey: key,
      title: title,
      content: content,
      backgroundColor: backgroundColor,
      fontColor: fontColor,
      updateDate: updateDate,
    );
  }
}
