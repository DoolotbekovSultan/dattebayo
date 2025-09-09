import 'package:dattebayo/core/utils/constants/dimentions.dart';
import 'package:flutter/material.dart';

class NatureTab extends StatelessWidget {
  final List<String> natureType;

  const NatureTab({super.key, required this.natureType});

  @override
  Widget build(BuildContext context) {
    if (natureType.isEmpty) {
      return const Center(child: Text("No Nature info available"));
    }

    return ListView.builder(
      padding: const EdgeInsets.all(Dimentions.paddingMedium),
      itemCount: natureType.length,
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
              natureType[index],
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        );
      },
    );
  }
}
