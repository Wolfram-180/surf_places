import 'package:flutter/material.dart';
import 'package:surf_places/domain/sight.dart';

class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({required this.sight, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: const ColoredBox(
        color: Colors.blue,
      ),
    );
  }
}
