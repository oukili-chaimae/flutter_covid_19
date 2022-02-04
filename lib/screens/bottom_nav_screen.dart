import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/main.dart';
import 'package:flutter_covid_dashboard_ui/screens/parametres.dart';
import 'package:flutter_covid_dashboard_ui/screens/scan_page.dart';
import 'package:flutter_covid_dashboard_ui/screens/scan_screen.dart';
import 'package:flutter_covid_dashboard_ui/screens/screens.dart';
import 'package:flutter_covid_dashboard_ui/screens/statistique.dart';
import 'package:flutter_covid_dashboard_ui/screens/welcome_screen.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List _screens = [
    //WelcomeScreen(),
    HomeScreen(),
    StatisticPage(),
    MyHomePage(),
    ParamtersScreen(),
    //Settings(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        elevation: 0.0,
        items:
            [Icons.home, Icons.insert_chart, Icons.event_note, Icons.settings]
                .asMap()
                .map((key, value) => MapEntry(
                      key,
                      BottomNavigationBarItem(
                        title: Text(''),
                        icon: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6.0,
                            horizontal: 16.0,
                          ),
                          decoration: BoxDecoration(
                            color: _currentIndex == key
                                ? Colors.blue[600]
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Icon(value),
                        ),
                      ),
                    ))
                .values
                .toList(),
      ),
    );
  }
}
