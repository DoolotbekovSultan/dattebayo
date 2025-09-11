// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_personal_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CharacterPersonalModelAdapter
    extends TypeAdapter<CharacterPersonalModel> {
  @override
  final int typeId = 4;

  @override
  CharacterPersonalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CharacterPersonalModel(
      birthdate: fields[0] as String?,
      sex: fields[1] as String?,
      age: fields[2] as AgeModel?,
      height: fields[3] as HeightModel?,
      weight: fields[4] as WeightModel?,
      bloodType: fields[5] as String?,
      kekkeiGenkai: (fields[6] as List?)?.cast<String>(),
      classification: (fields[7] as List?)?.cast<String>(),
      tailedBeast: fields[8] as String?,
      occupation: (fields[9] as List?)?.cast<String>(),
      affiliation: (fields[10] as List?)?.cast<String>(),
      team: (fields[11] as List?)?.cast<String>(),
      clan: fields[12] as String?,
      titles: (fields[13] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, CharacterPersonalModel obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.birthdate)
      ..writeByte(1)
      ..write(obj.sex)
      ..writeByte(2)
      ..write(obj.age)
      ..writeByte(3)
      ..write(obj.height)
      ..writeByte(4)
      ..write(obj.weight)
      ..writeByte(5)
      ..write(obj.bloodType)
      ..writeByte(6)
      ..write(obj.kekkeiGenkai)
      ..writeByte(7)
      ..write(obj.classification)
      ..writeByte(8)
      ..write(obj.tailedBeast)
      ..writeByte(9)
      ..write(obj.occupation)
      ..writeByte(10)
      ..write(obj.affiliation)
      ..writeByte(11)
      ..write(obj.team)
      ..writeByte(12)
      ..write(obj.clan)
      ..writeByte(13)
      ..write(obj.titles);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharacterPersonalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterPersonalModel _$CharacterPersonalModelFromJson(
        Map<String, dynamic> json) =>
    CharacterPersonalModel(
      birthdate: stringFromJson(json['birthdate']),
      sex: stringFromJson(json['sex']),
      age: json['age'] == null
          ? null
          : AgeModel.fromJson(json['age'] as Map<String, dynamic>),
      height: json['height'] == null
          ? null
          : HeightModel.fromJson(json['height'] as Map<String, dynamic>),
      weight: json['weight'] == null
          ? null
          : WeightModel.fromJson(json['weight'] as Map<String, dynamic>),
      bloodType: stringFromJson(json['bloodType']),
      kekkeiGenkai: listFromJson(json['kekkeiGenkai']),
      classification: listFromJson(json['classification']),
      tailedBeast: stringFromJson(json['tailedBeast']),
      occupation: listFromJson(json['occupation']),
      affiliation: listFromJson(json['affiliation']),
      team: listFromJson(json['team']),
      clan: stringFromJson(json['clan']),
      titles: listFromJson(json['titles']),
    );

Map<String, dynamic> _$CharacterPersonalModelToJson(
        CharacterPersonalModel instance) =>
    <String, dynamic>{
      'birthdate': instance.birthdate,
      'sex': instance.sex,
      'age': instance.age?.toJson(),
      'height': instance.height?.toJson(),
      'weight': instance.weight?.toJson(),
      'bloodType': instance.bloodType,
      'kekkeiGenkai': listToJson(instance.kekkeiGenkai),
      'classification': listToJson(instance.classification),
      'tailedBeast': instance.tailedBeast,
      'occupation': listToJson(instance.occupation),
      'affiliation': listToJson(instance.affiliation),
      'team': listToJson(instance.team),
      'clan': instance.clan,
      'titles': listToJson(instance.titles),
    };
