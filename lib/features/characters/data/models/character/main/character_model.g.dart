// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CharacterModelAdapter extends TypeAdapter<CharacterModel> {
  @override
  final int typeId = 0;

  @override
  CharacterModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CharacterModel(
      id: fields[0] as int?,
      name: fields[1] as String?,
      images: (fields[2] as List?)?.cast<String>(),
      debut: fields[3] as DebutModel?,
      family: fields[4] as CharacterFamilyModel?,
      jutsu: (fields[5] as List?)?.cast<String>(),
      natureType: (fields[6] as List?)?.cast<String>(),
      personal: fields[7] as CharacterPersonalModel?,
      rank: fields[8] as RankModel?,
      tools: (fields[9] as List?)?.cast<String>(),
      voiceActors: fields[10] as VoiceActorsModel?,
    );
  }

  @override
  void write(BinaryWriter writer, CharacterModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.images)
      ..writeByte(3)
      ..write(obj.debut)
      ..writeByte(4)
      ..write(obj.family)
      ..writeByte(5)
      ..write(obj.jutsu)
      ..writeByte(6)
      ..write(obj.natureType)
      ..writeByte(7)
      ..write(obj.personal)
      ..writeByte(8)
      ..write(obj.rank)
      ..writeByte(9)
      ..write(obj.tools)
      ..writeByte(10)
      ..write(obj.voiceActors);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharacterModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) =>
    CharacterModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      debut: json['debut'] == null
          ? null
          : DebutModel.fromJson(json['debut'] as Map<String, dynamic>),
      family: json['family'] == null
          ? null
          : CharacterFamilyModel.fromJson(
              json['family'] as Map<String, dynamic>),
      jutsu:
          (json['jutsu'] as List<dynamic>?)?.map((e) => e as String).toList(),
      natureType: (json['natureType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      personal: json['personal'] == null
          ? null
          : CharacterPersonalModel.fromJson(
              json['personal'] as Map<String, dynamic>),
      rank: json['rank'] == null
          ? null
          : RankModel.fromJson(json['rank'] as Map<String, dynamic>),
      tools:
          (json['tools'] as List<dynamic>?)?.map((e) => e as String).toList(),
      voiceActors: json['voiceActors'] == null
          ? null
          : VoiceActorsModel.fromJson(
              json['voiceActors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterModelToJson(CharacterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
      'debut': instance.debut?.toJson(),
      'family': instance.family?.toJson(),
      'jutsu': instance.jutsu,
      'natureType': instance.natureType,
      'personal': instance.personal?.toJson(),
      'rank': instance.rank?.toJson(),
      'tools': instance.tools,
      'voiceActors': instance.voiceActors?.toJson(),
    };
