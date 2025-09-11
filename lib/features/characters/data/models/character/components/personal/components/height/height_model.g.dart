// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'height_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HeightModelAdapter extends TypeAdapter<HeightModel> {
  @override
  final int typeId = 6;

  @override
  HeightModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HeightModel(
      part1: fields[0] as String?,
      part2: fields[1] as String?,
      blankPeriod: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, HeightModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.part1)
      ..writeByte(1)
      ..write(obj.part2)
      ..writeByte(2)
      ..write(obj.blankPeriod);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HeightModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeightModel _$HeightModelFromJson(Map<String, dynamic> json) => HeightModel(
      part1: json['Part I'] as String?,
      part2: json['Part II'] as String?,
      blankPeriod: json['Blank Period'] as String?,
    );

Map<String, dynamic> _$HeightModelToJson(HeightModel instance) =>
    <String, dynamic>{
      'Part I': instance.part1,
      'Part II': instance.part2,
      'Blank Period': instance.blankPeriod,
    };
