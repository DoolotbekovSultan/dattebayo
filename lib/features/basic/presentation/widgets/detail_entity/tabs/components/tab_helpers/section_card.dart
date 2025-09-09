import 'package:dattebayo/features/basic/presentation/widgets/detail_entity/tabs/components/tab_helpers/info_row.dart';
import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget {
  final String title;
  final Map<String, String?> data;

  const SectionCard({super.key, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 12),
            ...data.entries.map((e) => InfoRow(label: e.key, value: e.value)),
          ],
        ),
      ),
    );
  }
}
