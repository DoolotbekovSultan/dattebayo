import 'package:dattebayo/features/basic/data/datasources/local/hive_type_id.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tailed_beasts_family_model.g.dart';

@HiveType(typeId: HiveTypeId.tailedBeastFamilyModel)
@JsonSerializable()
class TailedBeastsFamilyModel extends HiveObject {
  @HiveField(0)
  final String? incarnationWithTheGodTree;
  @HiveField(1)
  final String? depoweredForm;

  TailedBeastsFamilyModel({this.incarnationWithTheGodTree, this.depoweredForm});

  factory TailedBeastsFamilyModel.fromJson(Map<String, dynamic> json) =>
      _$TailedBeastsFamilyModelFromJson(json);

  Map<String, dynamic> toJson() => _$TailedBeastsFamilyModelToJson(this);
}
/*
Json Example:
            "family": {
                "incarnation with the god tree": "Kaguya Ōtsutsuki",
                "depowered form": "Demonic Statue of the Outer Path"
            },
*/