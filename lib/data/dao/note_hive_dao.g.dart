// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_hive_dao.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NoteHiveDAOAdapter extends TypeAdapter<NoteHiveDAO> {
  @override
  final int typeId = 1;

  @override
  NoteHiveDAO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NoteHiveDAO(
      title: fields[0] as String,
      content: fields[1] as String,
      backgroundColor: fields[2] as int,
      fontColor: fields[3] as int,
      updateDate: fields[4] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, NoteHiveDAO obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.content)
      ..writeByte(2)
      ..write(obj.backgroundColor)
      ..writeByte(3)
      ..write(obj.fontColor)
      ..writeByte(4)
      ..write(obj.updateDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoteHiveDAOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
