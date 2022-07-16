import 'package:flutter/material.dart';
import 'package:surf_places/ui/res/app_typography.dart' as app_typography;
import 'package:surf_places/domain/sight.dart';

class SightDetailsScreen extends StatelessWidget {
  final Sight sight;

  const SightDetailsScreen({required this.sight, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sight Details'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  height: 360.0,
                  color: Colors.red,
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
              ]),
              Stack(
                children: [
                  Container(
                    height: 360.0,
                    color: Colors.white,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 36, 0, 0),
                    child: const Text(
                      'Пряности и радости',
                      style: app_typography.AppTypography.fs28w800RobotoDrkGrey,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 75, 0, 0),
                    child: const Text(
                      'ресторан',
                      style: app_typography.AppTypography.fs14BoldRobotoDrkGrey,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(100, 75, 0, 0),
                    child: const Text(
                      'закрыто до 09:00',
                      style: app_typography.AppTypography.fs14w400Roboto,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 115, 16, 0),
                    child: const Text(
                      'Пряный вкус радостной жизни вместе с шеф-поваром Изо Дзандзава, благодаря которой у гостей ресторана есть возможность выбирать из двух направлений: европейского и восточного',
                      style: app_typography.AppTypography.fs15w400RobotoDrkGrey,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 210, 0, 0),
                    height: 48.0,
                    width: 355.0,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 280, 0, 0),
                    height: 1.0,
                    width: 355.0,
                    decoration: const BoxDecoration(
                      color: Color(0xff7C7E92),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 290, 0, 0),
                    height: 40.0,
                    width: 164.0,
                    decoration: const BoxDecoration(
                      color: Color(0xff7C7E92),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(205, 290, 0, 0),
                    height: 40.0,
                    width: 164.0,
                    decoration: const BoxDecoration(
                      color: Color(0xff7C7E92),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
