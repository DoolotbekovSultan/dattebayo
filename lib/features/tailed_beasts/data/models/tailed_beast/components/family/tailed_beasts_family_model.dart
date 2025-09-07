import 'package:json_annotation/json_annotation.dart';

part 'tailed_beasts_family_model.g.dart';

@JsonSerializable()
class TailedBeastsFamilyModel {
  final String? incarnationWithTheGodTree;
  final String? depoweredForm;

  const TailedBeastsFamilyModel({
    this.incarnationWithTheGodTree,
    this.depoweredForm,
  });

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