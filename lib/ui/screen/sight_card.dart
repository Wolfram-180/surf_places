import 'package:flutter/material.dart';
import 'package:surf_places/domain/sight.dart';
import 'package:surf_places/ui/res/app_typography.dart' as app_typography;

class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({required this.sight, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 156.0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                    child: Image.network(
                      sight.url,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;

                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? (loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!)
                                : null,
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) =>
                          const Text('Произошла ошибка загрузки изображения'),
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
            const SizedBox(height: 5.0),
            Container(
              height: 92.0,
              decoration: const BoxDecoration(
                color: Color(0xffF5F5F5),
              ),
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
              child: SizedBox(
                //width: 296,
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
                    // Тема 4. Учимся верстать. Урок 8. Работа с размерами во Flutter
                    /* 
                    // Почему размер виджета Text поменялся?
                    // Т.к. ConstrainedBox добавил (спустил вниз) tight ограничение для дочернего виджета Text
                    ConstrainedBox(
                      constraints: BoxConstraints.tight(Size(296 / 2, 50)),
                      child: Text(
                        sight.details,
                        style: app_typography.AppTypography.fs14w400Roboto,
                      ),
                    ),
                    */
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
