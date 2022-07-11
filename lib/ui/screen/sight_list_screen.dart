import 'package:flutter/material.dart';
import 'package:surf_places/ui/res/app_assets.dart' as app_assets;
import 'package:surf_places/ui/res/app_colors.dart' as app_colors;
import 'package:surf_places/ui/res/app_strings.dart' as app_strings;

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_colors.AppColors.appBckgrColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 150,
        title: const Text(
          maxLines: 2,
          app_strings.AppStrings.appTitle,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 40,
            color: app_colors.AppColors.appTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: app_colors.AppColors.appBckgrColor,
        elevation: 0,
      ),
      body: const Center(
        child: Image(image: AssetImage(app_assets.AppAssets.flower)),
      ),
    );
  }
}
