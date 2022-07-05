import 'package:flutter/material.dart';
import 'package:surf_places/ui/screen/sight_list_screen.dart';

void main() {
  runApp(const App());
}

const String appTitle = 'Surf Flutter Course';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SightListScreen(),
    );
  }
}
