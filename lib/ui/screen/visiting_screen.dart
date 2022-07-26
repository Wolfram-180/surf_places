import 'package:flutter/material.dart';
//import 'categories_screen.dart';
//import 'favorites_body.dart';

class VisitingScreen extends StatefulWidget {
  const VisitingScreen({Key? key}) : super(key: key);

  @override
  _VisitingScreenState createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visiting Screen'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48.0),
          child: CustomTabIndicator(
            tabController: tabController,
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          const Center(child: Text('Tab 0 content')),
          const Center(child: Text('Tab 1 content')),
          const Center(child: Text('Tab 2 content')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: tabController.index,
        onTap: (currentIndex) {
          tabController.animateTo(currentIndex);
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: const Icon(Icons.comment),
            label: 'Comment',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.delete),
            label: 'Delete',
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
