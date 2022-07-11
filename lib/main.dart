import 'package:flutter/material.dart';
import 'package:surf_places/ui/res/app_strings.dart';
import 'package:surf_places/ui/screen/sight_list_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: AppStrings.appTitle,
      home: SightListScreen(),
    );
  }
}
