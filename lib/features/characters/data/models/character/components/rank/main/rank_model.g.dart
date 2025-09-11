// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rank_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RankModelAdapter extends TypeAdapter<RankModel> {
  @override
  final int typeId = 2;

  @override
  RankModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RankModel(
      ninjaRank: fields[0] as NinjaRankModel?,
      ninjaRegistration: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, RankModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.ninjaRank)
      ..writeByte(1)
      ..write(obj.ninjaRegistration);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RankModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RankModel _$RankModelFromJson(Map<String, dynamic> json) => RankModel(
      ninjaRank: json['ninjaRank'] == null
          ? null
          : NinjaRankModel.fromJson(json['ninjaRank'] as Map<String, dynamic>),
      ninjaRegistration: json['ninjaRegistration'] as String?,
    );

Map<String, dynamic> _$RankModelToJson(RankModel instance) => <String, dynamic>{
      'ninjaRank': instance.ninjaRank?.toJson(),
      'ninjaRegistration': instance.ninjaRegistration,
    };
