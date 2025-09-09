import 'package:dattebayo/core/utils/constants/dimentions.dart';
import 'package:flutter/material.dart';

class JutsuTab extends StatelessWidget {
  final List<String> jutsuList;

  const JutsuTab({super.key, required this.jutsuList});

  @override
  Widget build(BuildContext context) {
    if (jutsuList.isEmpty) {
      return const Center(child: Text("No Jutsu info available"));
    }

    return ListView.builder(
      padding: const EdgeInsets.all(Dimentions.paddingMedium),
      itemCount: jutsuList.length,
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
              jutsuList[index],
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        );
      },
    );
  }
}
