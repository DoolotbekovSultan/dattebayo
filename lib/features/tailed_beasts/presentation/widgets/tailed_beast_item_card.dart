import 'package:dattebayo/features/tailed_beasts/domain/entities/tailed_beast.dart';
import 'package:flutter/material.dart';

class TailedBeastItemCard extends StatelessWidget {
  final TailedBeast tailedBeast;
  const TailedBeastItemCard({super.key, required this.tailedBeast});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        (tailedBeast.images != null && tailedBeast.images!.isNotEmpty)
        ? tailedBeast.images!.first
        : '';
    return Padding(
      padding: EdgeInsets.all(8),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final availableWidth = constraints.maxWidth;
          final calculatedHeight = availableWidth * 1076 / 1440;
          return Card(
            elevation: 4,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    color: Colors.grey[200],
                    width: availableWidth,
                    height: calculatedHeight,
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Center(
                        child: Center(
                          child: Icon(
                            Icons.person,
                            size: calculatedHeight * 0.8,
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            color: Colors.grey[400],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.3),
                      child: Text(
                        tailedBeast.name ?? "Name error",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          decoration: TextDecoration.none,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
