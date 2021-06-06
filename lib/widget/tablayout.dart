import 'package:flutter/material.dart';

class TabLayout extends StatefulWidget{
  const TabLayout({Key key}): super(key: key);
  @override
  _TabLayoutState createState() => _TabLayoutState();
}

class _TabLayoutState extends State<TabLayout> with SingleTickerProviderStateMixin{
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Deskripsi',),
    Tab(text: 'Ketentuan',),
  ];

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        TabBar(
            controller: _tabController,
            tabs: myTabs),
        TabBarView(
            controller: _tabController,
            children: [
              Text('HAHAHAHAHA'),
              Text('wkwkwkwkwkwkk')
            ])
      ]
    );
  }

}