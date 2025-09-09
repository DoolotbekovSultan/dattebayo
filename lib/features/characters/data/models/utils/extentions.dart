import 'package:dattebayo/features/basic/data/models/utils/extentions.dart';
import 'package:dattebayo/features/characters/data/models/character/components/personal/components/age/age_model.dart';
import 'package:dattebayo/features/characters/data/models/character/components/personal/components/height/height_model.dart';
import 'package:dattebayo/features/characters/data/models/character/components/personal/components/weight/weight_model.dart';
import 'package:dattebayo/features/characters/data/models/character/main/character_model.dart';
import 'package:dattebayo/features/characters/data/models/character/components/family/character_family_model.dart';
import 'package:dattebayo/features/characters/data/models/character/components/rank/components/ninja_rank/ninja_rank_model.dart';
import 'package:dattebayo/features/characters/data/models/character/components/personal/main/character_personal_model.dart';
import 'package:dattebayo/features/characters/data/models/character/components/rank/main/rank_model.dart';
import 'package:dattebayo/features/characters/data/models/character/components/voice_actors/voice_actors_model.dart';
import 'package:dattebayo/features/characters/domain/entities/character/character.dart';
import 'package:dattebayo/features/characters/domain/entities/character/components/family/character_family.dart';
import 'package:dattebayo/features/characters/domain/entities/character/components/personal/components/age.dart';
import 'package:dattebayo/features/characters/domain/entities/character/components/personal/components/height.dart';
import 'package:dattebayo/features/characters/domain/entities/character/components/personal/components/weight.dart';
import 'package:dattebayo/features/characters/domain/entities/character/components/rank/components/ninja_rank.dart';
import 'package:dattebayo/features/characters/domain/entities/character/components/personal/character_personal.dart';
import 'package:dattebayo/features/characters/domain/entities/character/components/rank/rank.dart';
import 'package:dattebayo/features/characters/domain/entities/character/components/voice_actors.dart';

extension CharacterModelExtensions on CharacterModel {
  Character toEntity() {
    return Character(
      id: id,
      name: name,
      images: images,
      debut: debut?.toEntity(),
      family: family?.toEntity(),
      jutsu: jutsu,
      natureType: natureType,
      personal: personal?.toEntity(),
      rank: rank?.toEntity(),
      tools: tools,
      voiceActors: voiceActors?.toEntity(),
    );
  }
}

extension FamilyModelExtensions on CharacterFamilyModel {
  CharacterFamily toEntity() {
    return CharacterFamily(
      father: father,
      mother: mother,
      son: son,
      daughter: daughter,
      wife: wife,
      adoptiveSon: adoptiveSon,
      godfather: godfather,
    );
  }
}

extension PersonalModelExtensions on CharacterPersonalModel {
  CharacterPersonal toEntity() {
    return CharacterPersonal(
      birthdate: birthdate,
      sex: sex,
      age: age?.toEntity(),
      height: height?.toEntity(),
      weight: weight?.toEntity(),
      bloodType: bloodType,
      kekkeiGenkai: kekkeiGenkai,
      classification: classification,
      tailedBeast: tailedBeast,
      occupation: occupation,
      affiliation: affiliation,
      team: team,
      clan: clan,
      titles: titles,
    );
  }
}

extension AgeModelExtentions on AgeModel {
  Age toEntity() {
    return Age(part1: part1, part2: part2, academyGraduate: academyGraduate);
  }
}

extension HeightModelExtentions on HeightModel {
  Height toEntity() {
    return Height(part1: part1, part2: part2, blankPeriod: blankPeriod);
  }
}

extension WeightModelExtentions on WeightModel {
  Weight toEntity() {
    return Weight(part1: part1, part2: part2);
  }
}

extension RankModelExtensions on RankModel {
  Rank toEntity() {
    return Rank(
      ninjaRank: ninjaRank?.toEntity(),
      ninjaRegistration: ninjaRegistration,
    );
  }
}

extension NinjaRankModelExtensions on NinjaRankModel {
  NinjaRank toEntity() {
    return NinjaRank(partI: partI, gaiden: gaiden);
  }
}

extension VoiceActorsModelExtensions on VoiceActorsModel {
  VoiceActors toEntity() {
    return VoiceActors(japanese: japanese, english: english);
  }
}

extension CharacterModelsExtensions on List<CharacterModel> {
  List<Character> toEntities() => map((model) => model.toEntity()).toList();
}

extension ListFromJsonExtension on Object? {
  List<String>? toStringList() {
    if (this == null) return null;
    if (this is String) return [this as String];
    if (this is List) return (this as List).map((e) => e.toString()).toList();
    return null;
  }
}

extension ListToJsonExtension on List<String>? {
  dynamic toJsonList() => this;
}
