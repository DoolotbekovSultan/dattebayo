import 'package:dattebayo/core/utils/constants/dimentions.dart';
import 'package:dattebayo/features/basic/presentation/widgets/detail_entity/tabs/components/sections/debut_tab_section_card.dart';
import 'package:dattebayo/features/tailed_beasts/domain/entities/tailed_beast.dart';
import 'package:dattebayo/features/tailed_beasts/presentation/widgets/detail_tailed_beast/tabs/info/sections/personal/tailed_beast_info_tab_personal_section.dart';
import 'package:flutter/material.dart';

class TailedBeastInfoTab extends StatelessWidget {
  final TailedBeast tailedBeast;
  const TailedBeastInfoTab({super.key, required this.tailedBeast});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(Dimentions.borderRadiusMedium),
      children: [
        if (tailedBeast.debut != null)
          DebutTabSectionCard(debut: tailedBeast.debut!),
        if (tailedBeast.personal != null)
          TailedBeastInfoTabPersonalSection(personal: tailedBeast.personal!),
      ],
    );
  }
}
