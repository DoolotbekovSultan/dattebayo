import 'package:dattebayo/features/characters/domain/entities/character/components/personal/components/age.dart';
import 'package:dattebayo/features/characters/domain/entities/character/components/personal/components/height.dart';
import 'package:dattebayo/features/characters/domain/entities/character/components/personal/components/weight.dart';

class Personal {
  final String? birthdate;
  final String? sex;
  final Age? age;
  final Height? height;
  final Weight? weight;
  final String? bloodType;
  final List<String>? kekkeiGenkai;
  final List<String>? classification;
  final String? tailedBeast;
  final List<String>? occupation;
  final List<String>? affiliation;
  final List<String>? team;
  final String? clan;
  final List<String>? titles;

  Personal({
    this.birthdate,
    this.sex,
    this.age,
    this.height,
    this.weight,
    this.bloodType,
    this.kekkeiGenkai,
    this.classification,
    this.tailedBeast,
    this.occupation,
    this.affiliation,
    this.team,
    this.clan,
    this.titles,
  });
}
