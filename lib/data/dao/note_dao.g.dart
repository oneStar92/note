// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_dao.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NoteDaoAdapter extends TypeAdapter<NoteDao> {
  @override
  final int typeId = 0;

  @override
  NoteDao read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NoteDao(
      id: fields[0] as String,
      title: fields[1] as String,
      content: fields[2] as String,
      hexColor: fields[3] as int,
      hexFontColor: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, NoteDao obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.content)
      ..writeByte(3)
      ..write(obj.hexColor)
      ..writeByte(4)
      ..write(obj.hexFontColor);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoteDaoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}