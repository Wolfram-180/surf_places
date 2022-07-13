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
        title: RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: app_colors.AppColors.appTextColor,
            ),
            children: [
              TextSpan(
                text: app_strings.AppStrings.appTitle.substring(0, 1),
                style: const TextStyle(color: Colors.green),
              ),
              TextSpan(
                text: app_strings.AppStrings.appTitle.substring(1, 7),
              ),
              TextSpan(
                text: app_strings.AppStrings.appTitle.substring(7, 8),
                style: const TextStyle(color: Colors.yellow),
              ),
              TextSpan(
                text: app_strings.AppStrings.appTitle.substring(8, 22),
              ),
            ],
          ),
        ),
        backgroundColor: app_colors.AppColors.appBckgrColor,
        elevation: 0,
      ),
      body: const Center(
        child: Image(
          image: AssetImage(app_assets.AppAssets.flower),
        ),
      ),
    );
  }
}
