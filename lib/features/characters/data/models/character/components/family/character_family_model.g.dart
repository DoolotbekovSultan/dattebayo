// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_family_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CharacterFamilyModelAdapter extends TypeAdapter<CharacterFamilyModel> {
  @override
  final int typeId = 8;

  @override
  CharacterFamilyModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CharacterFamilyModel(
      father: fields[0] as String?,
      mother: fields[1] as String?,
      son: fields[2] as String?,
      daughter: fields[3] as String?,
      wife: fields[4] as String?,
      adoptiveSon: fields[5] as String?,
      godfather: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CharacterFamilyModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.father)
      ..writeByte(1)
      ..write(obj.mother)
      ..writeByte(2)
      ..write(obj.son)
      ..writeByte(3)
      ..write(obj.daughter)
      ..writeByte(4)
      ..write(obj.wife)
      ..writeByte(5)
      ..write(obj.adoptiveSon)
      ..writeByte(6)
      ..write(obj.godfather);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharacterFamilyModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterFamilyModel _$CharacterFamilyModelFromJson(
        Map<String, dynamic> json) =>
    CharacterFamilyModel(
      father: json['father'] as String?,
      mother: json['mother'] as String?,
      son: json['son'] as String?,
      daughter: json['daughter'] as String?,
      wife: json['wife'] as String?,
      adoptiveSon: json['adoptiveSon'] as String?,
      godfather: json['godfather'] as String?,
    );

Map<String, dynamic> _$CharacterFamilyModelToJson(
        CharacterFamilyModel instance) =>
    <String, dynamic>{
      'father': instance.father,
      'mother': instance.mother,
      'son': instance.son,
      'daughter': instance.daughter,
      'wife': instance.wife,
      'adoptiveSon': instance.adoptiveSon,
      'godfather': instance.godfather,
    };
