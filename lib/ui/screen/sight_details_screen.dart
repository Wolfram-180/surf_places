import 'package:flutter/material.dart';
import 'package:surf_places/domain/sight.dart';
import 'package:surf_places/ui/res/app_typography.dart' as app_typography;

class SightDetailsScreen extends StatelessWidget {
  final Sight sight;

  const SightDetailsScreen({required this.sight, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sight.name),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            children: [
              const GalleryAndBackBtn(),
              SightName(sight: sight),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: [
                    SightType(sight: sight),
                    const SightWorkTime(),
                  ],
                ),
              ),
              SightDetails(sight: sight),
              const SizedBox(height: 30),
              const BtnRoute(),
              const SizedBox(height: 10),
              const Divider(),
              Row(
                children: const [
                  BtnSchedule(),
                  BtnFavorite(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BtnFavorite extends StatelessWidget {
  const BtnFavorite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size(164, 40),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Material(
          color: Colors.white,
          child: InkWell(
            splashColor: Colors.yellow,
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.favorite_border, color: Colors.black),
                Text(
                  '  В Избранное',
                  style: app_typography.AppTypography.btnText16Bl,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BtnSchedule extends StatelessWidget {
  const BtnSchedule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size(164, 40),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Material(
          color: Colors.white,
          child: InkWell(
            splashColor: Colors.yellow,
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.calendar_month, color: Colors.grey),
                Text(
                  '  Запланировать',
                  style: app_typography.AppTypography.btnText16Bl,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BtnRoute extends StatelessWidget {
  const BtnRoute({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size(328, 48),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Material(
          color: const Color(0xff4CAF50),
          child: InkWell(
            splashColor: Colors.yellow,
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.route, color: Colors.white),
                Text(
                  'ПОСТРОИТЬ МАРШРУТ',
                  style: app_typography.AppTypography.btnText16Wh,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SightDetails extends StatelessWidget {
  final Sight sight;

  const SightDetails({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
      child: Text(
        sight.details,
        style: app_typography.AppTypography.fs15w400RobotoDrkGrey,
      ),
    );
  }
}

class SightWorkTime extends StatelessWidget {
  const SightWorkTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: const Text(
        'закрыто до 09:00',
        style: app_typography.AppTypography.fs14w400Roboto,
      ),
    );
  }
}

class SightType extends StatelessWidget {
  final Sight sight;

  const SightType({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
      child: Text(
        sight.type,
        style: app_typography.AppTypography.fs14BoldRobotoDrkGrey,
      ),
    );
  }
}

class SightName extends StatelessWidget {
  final Sight sight;

  const SightName({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      alignment: Alignment.centerLeft,
      child: Text(
        sight.name,
        style: app_typography.AppTypography.fs28w800RobotoDrkGrey,
      ),
    );
  }
}

class GalleryAndBackBtn extends StatelessWidget {
  final Sight sight;

  const GalleryAndBackBtn({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.network(
        sight.url,
        width: double.infinity,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          // 4-10 load indicator
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
      Container(
        margin: const EdgeInsets.fromLTRB(16, 36, 0, 0),
        child: const Icon(Icons.arrow_back),
        height: 32.0,
        width: 32.0,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    ]);
  }
}
