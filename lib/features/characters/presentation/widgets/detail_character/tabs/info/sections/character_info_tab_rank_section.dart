import 'package:dattebayo/features/basic/presentation/widgets/tabs/components/tab_helpers/selection_card.dart';
import 'package:dattebayo/features/characters/domain/entities/character/components/rank/rank.dart';
import 'package:flutter/material.dart';

class CharacterInfoTabRankSection extends StatelessWidget {
  final Rank rank;

  const CharacterInfoTabRankSection({super.key, required this.rank});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      title: "Rank",
      data: {
        if (rank.ninjaRank != null) ...{
          "Part I": rank.ninjaRank!.partI,
          "Gaiden": rank.ninjaRank!.gaiden,
        },
        "Ninja Registration": rank.ninjaRegistration,
      },
    );
  }
}
