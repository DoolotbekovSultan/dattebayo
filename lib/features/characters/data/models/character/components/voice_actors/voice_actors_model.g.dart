// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voice_actors_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VoiceActorsModelAdapter extends TypeAdapter<VoiceActorsModel> {
  @override
  final int typeId = 1;

  @override
  VoiceActorsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VoiceActorsModel(
      japanese: (fields[0] as List?)?.cast<String>(),
      english: (fields[3] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, VoiceActorsModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.japanese)
      ..writeByte(3)
      ..write(obj.english);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VoiceActorsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoiceActorsModel _$VoiceActorsModelFromJson(Map<String, dynamic> json) =>
    VoiceActorsModel(
      japanese: listFromJson(json['japanese']),
      english: listFromJson(json['english']),
    );

Map<String, dynamic> _$VoiceActorsModelToJson(VoiceActorsModel instance) =>
    <String, dynamic>{
      'japanese': listToJson(instance.japanese),
      'english': listToJson(instance.english),
    };
