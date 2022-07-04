import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const String appTitle = 'Surf Flutter Course';

int bldCounter1 = 0;
int bldCounter2 = 0;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: 'Surf Flutter Course'),
      //home: const MyFirstWidget(),
      home: const MySecondWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bldCounter1++;
    // ignore: avoid_print
    print('stless: $bldCounter1');

    // ignore: avoid_unnecessary_containers
    return Container(
      child: const Center(
        child: Text('Hello!'),
      ),
    );
  }
}

class MySecondWidget extends StatefulWidget {
  const MySecondWidget({Key? key}) : super(key: key);

  @override
  State<MySecondWidget> createState() => _MySecondWidgetState();
}

class _MySecondWidgetState extends State<MySecondWidget> {
  @override
  Widget build(BuildContext context) {
    bldCounter2++;
    // ignore: avoid_print
    print('stfull: $bldCounter2');

    // ignore: avoid_unnecessary_containers
    return Container(
      child: const Center(
        child: Text('Hello!'),
      ),
    );
  }
}
