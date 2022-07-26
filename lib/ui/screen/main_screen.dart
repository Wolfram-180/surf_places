import 'package:flutter/material.dart';
import 'package:surf_places/ui/res/app_strings.dart';
//import 'categories_screen.dart';
//import 'favorites_body.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabControllerMain;
  //late TabController tabControllerFavorite;

  @override
  void initState() {
    super.initState();
    tabControllerMain = TabController(length: 4, vsync: this);
    tabControllerMain.addListener(() {
      setState(() {});
    });
    /*
    tabControllerFavorite = TabController(length: 2, vsync: this);
    tabControllerFavorite.addListener(() {
      setState(() {});
    });
    */
  }

  @override
  void dispose() {
    super.dispose();
    tabControllerMain.dispose();
    //tabControllerFavorite.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nice Places'),
        /*
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48.0),
          child: CustomTabIndicator(
            tabController: tabControllerMain,
          ),
        ),
        */
      ),
      body: TabBarView(
        controller: tabControllerMain,
        children: [
          const Center(child: Text('Tab 0 content')),
          const Center(child: Text('Tab 1 content')),
          const Center(child: Text('Tab 2 content')),
          const Center(child: Text('Tab 3 content')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: tabControllerMain.index,
        onTap: (currentIndex) {
          tabControllerMain.animateTo(currentIndex);
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
      ),
    );
  }
}

class CustomTabIndicator extends StatelessWidget {
  TabController tabController;

  CustomTabIndicator({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < tabController.length; i++)
          CustomTabWdg(i: i, tabCntrlrIndex: tabController.index),
      ],
    );
  }
}

class CustomTabWdg extends StatelessWidget {
  final int i;
  final int tabCntrlrIndex;

  const CustomTabWdg({
    Key? key,
    required this.i,
    required this.tabCntrlrIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: tabCntrlrIndex == i ? Colors.red : Colors.grey,
        ),
        width: 15,
        height: 15,
      ),
    );
  }
}
