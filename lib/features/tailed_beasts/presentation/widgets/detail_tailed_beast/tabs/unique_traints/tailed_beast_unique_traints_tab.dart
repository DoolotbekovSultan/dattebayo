import 'package:dattebayo/core/utils/constants/dimentions.dart';
import 'package:flutter/material.dart';

class TailedBeastUniqueTraintsTab extends StatelessWidget {
  final List<String> uniqueTraints;

  const TailedBeastUniqueTraintsTab({super.key, required this.uniqueTraints});

  @override
  Widget build(BuildContext context) {
    if (uniqueTraints.isEmpty) {
      return const Center(child: Text("No Nature info available"));
    }

    return ListView.builder(
      padding: const EdgeInsets.all(Dimentions.paddingMedium),
      itemCount: uniqueTraints.length,
      itemBuilder: (context, index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimentions.borderRadiusLarge),
          ),
          elevation: Dimentions.elevationSmall,
          margin: const EdgeInsets.only(bottom: Dimentions.marginSM),
          child: Padding(
            padding: const EdgeInsets.all(Dimentions.paddingMedium),
            child: Text(
              uniqueTraints[index],
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        );
      },
    );
  }
}
