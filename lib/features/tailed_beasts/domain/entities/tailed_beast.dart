import 'package:dattebayo/features/basic/domain/entities/components/debut/debut.dart';
import 'package:dattebayo/features/tailed_beasts/domain/entities/components/tailed_beast_family.dart';
import 'package:dattebayo/features/tailed_beasts/domain/entities/components/tailed_beast_personal.dart';

class TailedBeast {
  final int? id;
  final String? name;
  final List<String>? images;
  final Debut? debut;
  final TailedBeastsFamily? family;
  final List<String>? jutsu;
  final List<String>? natureType;
  final TailedBeastPersonal? personal;
  final List<String>? uniqueTraits;

  TailedBeast({
    this.id,
    this.name,
    this.images,
    this.debut,
    this.family,
    this.jutsu,
    this.natureType,
    this.personal,
    this.uniqueTraits,
  });
}
