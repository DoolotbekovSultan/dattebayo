import 'package:dattebayo/features/basic/data/models/utils/extentions.dart';
import 'package:dattebayo/features/tailed_beasts/data/models/tailed_beast/components/family/tailed_beasts_family_model.dart';
import 'package:dattebayo/features/tailed_beasts/data/models/tailed_beast/components/personal/tailed_beast_personal_model.dart';
import 'package:dattebayo/features/tailed_beasts/data/models/tailed_beast/main/tailed_beast_model.dart';
import 'package:dattebayo/features/tailed_beasts/domain/entities/components/tailed_beast_family.dart';
import 'package:dattebayo/features/tailed_beasts/domain/entities/components/tailed_beast_personal.dart';
import 'package:dattebayo/features/tailed_beasts/domain/entities/tailed_beast.dart';

extension TailedBeastModelExtentions on TailedBeastModel {
  TailedBeast toEntity() => TailedBeast(
    id: id,
    name: name,
    images: images,
    debut: debut?.toEntity(),
    family: family?.toEntity(),
    jutsu: jutsu,
    natureType: natureType,
    personal: personal?.toEntity(),
    uniqueTraits: uniqueTraits,
  );
}

extension TailedBeastModelsExtentions on List<TailedBeastModel> {
  List<TailedBeast> toEntities() => map((model) => model.toEntity()).toList();
}

extension TailedBeastFamilyModelExtentions on TailedBeastsFamilyModel {
  TailedBeastsFamily toEntity() => TailedBeastsFamily(
    incarnationWithTheGodTree: incarnationWithTheGodTree,
    depoweredForm: depoweredForm,
  );
}

extension TailedBeastPersonalModelExtentions on TailedBeastPersonalModel {
  TailedBeastPersonal toEntity() => TailedBeastPersonal(
    status: status,
    kekkeiGenkai: kekkeiGenkai,
    classification: classification,
    jinchuriki: jinchuriki,
    titles: titles,
  );
}
