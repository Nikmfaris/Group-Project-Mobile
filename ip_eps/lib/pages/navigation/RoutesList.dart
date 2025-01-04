import 'package:flutter/material.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:ip_eps/pages/navigation/ipgeo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    IpGeoPage(),
    SearchPage(),
    HighlightsPage(),
    SettingsPage(),
    KoreanPage(),
  ];

  void _handleIndexChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('main page'),
        backgroundColor: Colors.blue,
      ),
      extendBody: true,
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: _handleIndexChanged,
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.event),
            title: Text('IP Geo Location'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.map),
            title: Text('Search'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.monetization_on),
            title: Text('Settings'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.settings),
            title: Text('한국어'),
          ),
        ],
      ),
    );
  }
}
