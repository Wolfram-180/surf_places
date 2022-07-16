import 'package:flutter/material.dart';
import 'package:surf_places/mocks.dart' as mocks;
import 'package:surf_places/ui/res/app_colors.dart' as app_colors;
import 'package:surf_places/ui/res/app_strings.dart' as app_strings;
import 'package:surf_places/ui/res/app_typography.dart' as app_typography;
import 'package:surf_places/ui/screen/sight_card.dart';
//import 'package:surf_places/ui/screen/sight_details_screen.dart';
import 'package:functional_widget/builder.dart';
//import 'package:functional_widget/function_to_widget_class.dart

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  final _sightsIndxs =
      List<int>.generate(10, (index) => index, growable: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_colors.AppColors.appBckgrColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 150,
        title: RichText(
          text: const TextSpan(
            style: app_typography.AppTypography.fs40Bold,
            children: [
              TextSpan(
                text: app_strings.AppStrings.appTitle,
              ),
            ],
          ),
        ),
        backgroundColor: app_colors.AppColors.appBckgrColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: sightCardsList(_sightsIndxs),
      ),
    );
  }

  //@swidget
  Widget sightCardsList(List<int> indxs) {
    final List<Widget> sightCardsList = indxs.map((index) {
      return SightCard(sight: mocks.mocks[index]);
    }).toList();

    return Column(
      children: sightCardsList,
    );
  }
}
