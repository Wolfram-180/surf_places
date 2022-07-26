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
        title: Text('Visiting Screen'),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Center(child: Text('Tab 0 content')),
          Center(child: Text('Tab 1 content')),
          Center(child: Text('Tab 2 content')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: Text('')),
        BottomNavigationBarItem(icon: Icon(Icons.comment), label: Text('')),
        BottomNavigationBarItem(icon: Icon(Icons.delete), label: Text('')),
      ]),
    );
  }
}

class tempToDelete_NewWidget extends StatelessWidget {
  const tempToDelete_NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      // initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Latest News'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.category,
                ),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(
                  Icons.star,
                ),
                text: 'Favorites',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            //CategoriesScreen(),
            //FavoritesBody(),
          ],
        ),
      ),
    );
  }
}
