import 'package:dattebayo/features/basic/presentation/widgets/detail_entity/tabs/components/tab_helpers/section_card.dart';
import 'package:dattebayo/features/tailed_beasts/domain/entities/components/tailed_beast_family.dart';
import 'package:flutter/material.dart';

class TailedBeastFamilyTab extends StatelessWidget {
  final TailedBeastsFamily? family;

  const TailedBeastFamilyTab({super.key, required this.family});

  @override
  Widget build(BuildContext context) {
    if (family == null) {
      return const Center(child: Text("No family information available"));
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        SectionCard(
          title: "Family",
          data: {
            "Incarnation With The God Tree":
                family!.incarnationWithTheGodTree ?? "N/A",
            "Depowered Form": family!.depoweredForm ?? "N/A",
          },
        ),
      ],
    );
  }
}
