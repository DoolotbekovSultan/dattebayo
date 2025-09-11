import 'package:dattebayo/features/basic/data/models/components/debut/debut_model.dart';
import 'package:dattebayo/features/basic/domain/entities/components/debut.dart';

extension DebutModelExtensions on DebutModel {
  Debut toEntity() {
    return Debut(
      manga: manga,
      anime: anime,
      novel: novel,
      movie: movie,
      game: game,
      ova: ova,
      appearsIn: appearsIn,
    );
  }
}
