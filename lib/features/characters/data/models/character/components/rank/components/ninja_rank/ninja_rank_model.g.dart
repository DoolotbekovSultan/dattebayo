// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ninja_rank_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NinjaRankModelAdapter extends TypeAdapter<NinjaRankModel> {
  @override
  final int typeId = 3;

  @override
  NinjaRankModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NinjaRankModel(
      partI: fields[0] as String?,
      gaiden: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, NinjaRankModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.partI)
      ..writeByte(1)
      ..write(obj.gaiden);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NinjaRankModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NinjaRankModel _$NinjaRankModelFromJson(Map<String, dynamic> json) =>
    NinjaRankModel(
      partI: json['partI'] as String?,
      gaiden: json['gaiden'] as String?,
    );

Map<String, dynamic> _$NinjaRankModelToJson(NinjaRankModel instance) =>
    <String, dynamic>{
      'partI': instance.partI,
      'gaiden': instance.gaiden,
    };
