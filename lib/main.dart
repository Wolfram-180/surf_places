import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

const String appTitle = 'Surf Flutter Course';

int bldCounter1 = 0;
int bldCounter2 = 0;

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: 'Surf Flutter Course'),
      //home: const MyFirstWidget(),
      //home: const MySecondWidget(),
      //home: const MyThirdWidget(title: appTitle),
      home: const MyFourthWidget(title: appTitle),
    );
  }
}

class MyThirdWidget extends StatelessWidget {
  final String title;

  const MyThirdWidget({Key? key, this.title = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(child: Text(context.runtimeType.toString())),
      ),
    );
  }

  String getRuntimeType() {
    return ''; // context.runtimeType.toString();
  }
}

class MyFourthWidget extends StatefulWidget {
  final String title;

  const MyFourthWidget({Key? key, this.title = ''}) : super(key: key);

  @override
  State<MyFourthWidget> createState() => _MyFourthWidgetState();
}

class _MyFourthWidgetState extends State<MyFourthWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(child: Text(getRuntimeType())),
      ),
    );
  }

  String getRuntimeType() {
    return context.runtimeType.toString();
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
