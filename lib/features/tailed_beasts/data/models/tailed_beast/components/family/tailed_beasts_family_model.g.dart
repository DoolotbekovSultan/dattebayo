// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tailed_beasts_family_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TailedBeastsFamilyModelAdapter
    extends TypeAdapter<TailedBeastsFamilyModel> {
  @override
  final int typeId = 11;

  @override
  TailedBeastsFamilyModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TailedBeastsFamilyModel(
      incarnationWithTheGodTree: fields[0] as String?,
      depoweredForm: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, TailedBeastsFamilyModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.incarnationWithTheGodTree)
      ..writeByte(1)
      ..write(obj.depoweredForm);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TailedBeastsFamilyModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TailedBeastsFamilyModel _$TailedBeastsFamilyModelFromJson(
        Map<String, dynamic> json) =>
    TailedBeastsFamilyModel(
      incarnationWithTheGodTree: json['incarnationWithTheGodTree'] as String?,
      depoweredForm: json['depoweredForm'] as String?,
    );

Map<String, dynamic> _$TailedBeastsFamilyModelToJson(
        TailedBeastsFamilyModel instance) =>
    <String, dynamic>{
      'incarnationWithTheGodTree': instance.incarnationWithTheGodTree,
      'depoweredForm': instance.depoweredForm,
    };
