import 'package:flutter/material.dart';
import 'package:surf_places/ui/res/app_assets.dart' as app_assets;
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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(app_strings.AppStrings.appTitle),
      ),
      body: const Center(
        child: Image(image: AssetImage(app_assets.AppAssets.flower)),
      ),
    );
  }
}
