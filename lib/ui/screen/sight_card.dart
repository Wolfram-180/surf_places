import 'package:flutter/material.dart';
import 'package:surf_places/domain/sight.dart';
import 'package:surf_places/ui/res/app_typography.dart' as app_typography;

class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({required this.sight, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 96.0,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                  child: Image.network(
                    sight.url,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                child: Text(
                  sight.type,
                  style: app_typography.AppTypography.fs14w700Roboto,
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                padding: const EdgeInsets.fromLTRB(0, 18, 18, 0),
                child: const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 28.0,
                ),
              ),
            ],
          ),
          Container(
            height: 92.0,
            decoration: const BoxDecoration(
              color: Color(0xffF5F5F5),
            ),
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: SizedBox(
              width: 296,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sight.name,
                    style: app_typography.AppTypography.fs16BoldRoboto,
                  ),
                  Text(
                    sight.details,
                    style: app_typography.AppTypography.fs14w400Roboto,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
