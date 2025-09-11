// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weight_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeightModelAdapter extends TypeAdapter<WeightModel> {
  @override
  final int typeId = 7;

  @override
  WeightModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeightModel(
      part1: fields[0] as String?,
      part2: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, WeightModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.part1)
      ..writeByte(1)
      ..write(obj.part2);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeightModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeightModel _$WeightModelFromJson(Map<String, dynamic> json) => WeightModel(
      part1: json['Part I'] as String?,
      part2: json['Part II'] as String?,
    );

Map<String, dynamic> _$WeightModelToJson(WeightModel instance) =>
    <String, dynamic>{
      'Part I': instance.part1,
      'Part II': instance.part2,
    };
