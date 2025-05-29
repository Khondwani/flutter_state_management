import 'package:flutter/material.dart';
import 'package:flutter_state_management/screens/home_bloc_counter.dart';
import 'package:flutter_state_management/screens/home_redux_counter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  String _title = 'Countsy - Bloc Counter';
  final List<Widget> _tabNavigationScreens = const [
    HomeBlocCounter(),
    HomeReduxCounter(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title), centerTitle: true),
      body: _tabNavigationScreens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.view_comfortable_rounded),
            label: 'Bloc Counter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspaces_filled),
            label: 'Redux Counter',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          // Handle navigation logic here
          setState(() {
            _selectedIndex = index;
            if (index == 0) {
              _title = 'Countsy - Bloc Counter';
            } else if (index == 1) {
              _title = 'Countsy - Redux Counter';
            }
          });
        },
      ),
    );
  }
}
