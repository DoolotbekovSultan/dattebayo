// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tailed_beast_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TailedBeastModelAdapter extends TypeAdapter<TailedBeastModel> {
  @override
  final int typeId = 10;

  @override
  TailedBeastModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TailedBeastModel(
      id: fields[0] as int?,
      name: fields[1] as String?,
      images: (fields[2] as List?)?.cast<String>(),
      debut: fields[3] as DebutModel?,
      family: fields[4] as TailedBeastsFamilyModel?,
      jutsu: (fields[5] as List?)?.cast<String>(),
      natureType: (fields[6] as List?)?.cast<String>(),
      personal: fields[7] as TailedBeastPersonalModel?,
      uniqueTraits: (fields[8] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, TailedBeastModel obj) {
    writer
      ..writeByte(9)
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
      ..write(obj.uniqueTraits);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TailedBeastModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TailedBeastModel _$TailedBeastModelFromJson(Map<String, dynamic> json) =>
    TailedBeastModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      debut: json['debut'] == null
          ? null
          : DebutModel.fromJson(json['debut'] as Map<String, dynamic>),
      family: json['family'] == null
          ? null
          : TailedBeastsFamilyModel.fromJson(
              json['family'] as Map<String, dynamic>),
      jutsu:
          (json['jutsu'] as List<dynamic>?)?.map((e) => e as String).toList(),
      natureType: (json['natureType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      personal: json['personal'] == null
          ? null
          : TailedBeastPersonalModel.fromJson(
              json['personal'] as Map<String, dynamic>),
      uniqueTraits: (json['uniqueTraits'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TailedBeastModelToJson(TailedBeastModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
      'debut': instance.debut?.toJson(),
      'family': instance.family?.toJson(),
      'jutsu': instance.jutsu,
      'natureType': instance.natureType,
      'personal': instance.personal?.toJson(),
      'uniqueTraits': instance.uniqueTraits,
    };
