import 'package:dattebayo/features/characters/domain/entities/character/components/debut.dart';
import 'package:dattebayo/features/characters/domain/entities/character/components/family.dart';
import 'package:dattebayo/features/characters/domain/entities/character/components/personal/personal.dart';
import 'package:dattebayo/features/characters/domain/entities/character/components/rank/rank.dart';
import 'package:dattebayo/features/characters/domain/entities/character/components/voice_actors.dart';

class Character {
  final int? id;
  final String? name;
  final List<String>? images;
  final Debut? debut;
  final Family? family;
  final List<String>? jutsu;
  final List<String>? natureType;
  final Personal? personal;
  final Rank? rank;
  final List<String>? tools;
  final VoiceActors? voiceActors;

  Character({
    this.id,
    this.name,
    this.images,
    this.debut,
    this.family,
    this.jutsu,
    this.natureType,
    this.personal,
    this.rank,
    this.tools,
    this.voiceActors,
  });
}
