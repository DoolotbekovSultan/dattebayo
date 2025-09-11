// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tailed_beast_personal_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TailedBeastPersonalModelAdapter
    extends TypeAdapter<TailedBeastPersonalModel> {
  @override
  final int typeId = 12;

  @override
  TailedBeastPersonalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TailedBeastPersonalModel(
      status: fields[0] as String?,
      kekkeiGenkai: (fields[1] as List?)?.cast<String>(),
      classification: fields[2] as String?,
      jinchuriki: (fields[3] as List?)?.cast<String>(),
      titles: (fields[4] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, TailedBeastPersonalModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.status)
      ..writeByte(1)
      ..write(obj.kekkeiGenkai)
      ..writeByte(2)
      ..write(obj.classification)
      ..writeByte(3)
      ..write(obj.jinchuriki)
      ..writeByte(4)
      ..write(obj.titles);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TailedBeastPersonalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TailedBeastPersonalModel _$TailedBeastPersonalModelFromJson(
        Map<String, dynamic> json) =>
    TailedBeastPersonalModel(
      status: stringFromJson(json['status']),
      kekkeiGenkai: listFromJson(json['kekkeiGenkai']),
      classification: stringFromJson(json['classification']),
      jinchuriki: listFromJson(json['jinchuriki']),
      titles: listFromJson(json['titles']),
    );

Map<String, dynamic> _$TailedBeastPersonalModelToJson(
        TailedBeastPersonalModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'kekkeiGenkai': listToJson(instance.kekkeiGenkai),
      'classification': instance.classification,
      'jinchuriki': listToJson(instance.jinchuriki),
      'titles': listToJson(instance.titles),
    };
