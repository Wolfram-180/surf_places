import 'package:surf_places/domain/sight.dart';
import 'package:surf_places/ui/res/app_assets.dart' as app_assets;

final List<Sight> mocks = [
  Sight(
    name: 'Пляж в деревне Верхняя Кышка',
    lat: 53.29,
    lon: 44.58,
    url: 'https://kyshka-plyazh.ru',
    details: 'Центральный пляж областного значения в деревне Верхняя Кышка',
    type: 'Пляж',
    img: app_assets.AppAssets.beach,
  ),
  Sight(
    name: 'Грибная поляна в Видном',
    lat: 63.79,
    lon: 54.78,
    url: 'https://grebi-v-vidnoye.ru',
    details: 'Собирайте грибы сколько хотите',
    type: 'Отдых в лесу',
    img: app_assets.AppAssets.mushrms,
  ),
  Sight(
    name: 'Страх и ненависть в Элден Ринге',
    lat: 62.97,
    lon: 53.79,
    url: 'https://veseluha.ru',
    details: 'Полоса препятствий для экстремалов',
    type: 'Активный отдых',
    img: app_assets.AppAssets.city,
  ),
];
