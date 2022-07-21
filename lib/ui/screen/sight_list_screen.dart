import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:surf_places/mocks.dart' as mocks;
import 'package:surf_places/ui/res/app_colors.dart' as app_colors;
import 'package:surf_places/ui/res/app_strings.dart' as app_strings;
import 'package:surf_places/ui/res/app_typography.dart' as app_typography;
import 'package:surf_places/ui/screen/sight_card.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  final _sightsIndxs =
      List<int>.generate(mocks.mocks.length, (index) => index, growable: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_colors.AppColors.appBckgrColor,
      resizeToAvoidBottomInset: false,
      appBar: const SightsAppBar(
        height: 100,
        edgeLTRBtop: 65,
      ),
      body: SingleChildScrollView(
        child: sightCardsList(_sightsIndxs),
      ),
    );
  }

  @swidget
  Widget sightCardsList(List<int> indxs) {
    final List<Widget> sightCardsList = indxs.map((index) {
      return SightCard(sight: mocks.mocks[index]);
    }).toList();

    return Column(
      children: sightCardsList,
    );
  }
}

class SightsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final double edgeLTRBtop;

  const SightsAppBar({
    Key? key,
    required this.height,
    required this.edgeLTRBtop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, edgeLTRBtop, 0, 0),
      child: AppBar(
        backgroundColor: app_colors.AppColors.appBckgrColor,
        elevation: 0,
        flexibleSpace: RichText(
          text: const TextSpan(
            style: app_typography.AppTypography.fs40Bold,
            children: [
              TextSpan(
                text: app_strings.AppStrings.appTitle,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: member-ordering-extended
  @override
  Size get preferredSize => Size.fromHeight(height);
}
