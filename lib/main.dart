import 'package:flutter/material.dart';
import 'package:surf_places/ui/res/app_strings.dart';
import 'package:surf_places/ui/screen/sight_details_screen.dart';
import 'package:surf_places/ui/screen/sight_list_screen.dart';
import 'package:surf_places/mocks.dart' as mocks;


void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appTitle,
      home: SightDetailsScreen(sight: mocks.mocks[0]),
      //SightListScreen(),
    );
  }
}
