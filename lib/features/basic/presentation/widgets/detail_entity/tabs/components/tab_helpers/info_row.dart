import 'package:flutter/material.dart';

class InfoRow extends StatelessWidget {
  final String label;
  final String? value;
  const InfoRow({super.key, required this.label, required this.value});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: RichText(
        text: TextSpan(
          text: "$label: ",
          style: Theme.of(context).textTheme.bodyLarge,
          children: [
            TextSpan(
              text: value ?? "N/A",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
