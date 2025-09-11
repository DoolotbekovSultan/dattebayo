// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'age_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AgeModelAdapter extends TypeAdapter<AgeModel> {
  @override
  final int typeId = 5;

  @override
  AgeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AgeModel(
      part1: fields[0] as String?,
      part2: fields[1] as String?,
      academyGraduate: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AgeModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.part1)
      ..writeByte(1)
      ..write(obj.part2)
      ..writeByte(2)
      ..write(obj.academyGraduate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AgeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgeModel _$AgeModelFromJson(Map<String, dynamic> json) => AgeModel(
      part1: json['Part I'] as String?,
      part2: json['Part II'] as String?,
      academyGraduate: json['Academy Graduate'] as String?,
    );

Map<String, dynamic> _$AgeModelToJson(AgeModel instance) => <String, dynamic>{
      'Part I': instance.part1,
      'Part II': instance.part2,
      'Academy Graduate': instance.academyGraduate,
    };
