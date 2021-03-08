import 'package:aplenda_ingles/pages/tab1_page.dart';
import 'package:aplenda_ingles/pages/tab2_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          centerTitle: true,
          title: Text('Aprenda Inglês'),
          bottom: TabBar(
            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            controller: _tabController,
            tabs: [
              Tab(
                text: 'Animais',
              ),
              Tab(
                text: 'Números',
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            TabBar1Page(),
            TabBar2Page(),
          ],
        ));
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
}
