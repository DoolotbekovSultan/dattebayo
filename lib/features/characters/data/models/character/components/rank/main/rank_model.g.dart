// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rank_model.dart';

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
