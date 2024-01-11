// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NoteImplAdapter extends TypeAdapter<_$NoteImpl> {
  @override
  final int typeId = 0;

  @override
  _$NoteImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$NoteImpl(
      title: fields[0] as String,
      content: fields[1] as String,
      backgroundColor: fields[2] as int,
      fontColor: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$NoteImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.content)
      ..writeByte(2)
      ..write(obj.backgroundColor)
      ..writeByte(3)
      ..write(obj.fontColor);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoteImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
