// ignore_for_file: deprecated_member_use
import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/config/palette.dart';
import 'package:flutter_covid_dashboard_ui/data/data.dart';
import 'package:flutter_covid_dashboard_ui/screens/scan_page.dart';
import 'package:flutter_covid_dashboard_ui/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _country = 'USA';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _buildCase(screenHeight),
          _buildPreventionTips(screenHeight),
          _buildYourOwnTest(screenHeight),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Palette.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'COVID-19',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                /* CountryDropdown(
                  countries: ['CN', 'FR', 'IN', 'IT', 'UK', 'USA'],
                  country: _country,
                  onChanged: (val) => setState(() => _country = val),
                ),*/
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: screenHeight * 0.01),
                SizedBox(height: screenHeight * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: Image.asset(
                        'assets/images/covid19.jpg',
                        height: screenHeight * 0.29,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildCase(double screenHeight) {
    return SliverToBoxAdapter(
      child: StatsGrid(),
    );
  }

  SliverToBoxAdapter _buildPreventionTips(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Prevention Tips',
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: prevention
                  .map((e) => Column(
                        children: <Widget>[
                          Image.asset(
                            e.keys.first,
                            height: screenHeight * 0.12,
                          ),
                          SizedBox(height: screenHeight * 0.015),
                          Text(
                            e.values.first,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildYourOwnTest(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        padding: const EdgeInsets.all(10.0),
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFAD9FE4), Palette.primaryColor],
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset('assets/images/scan2.jpg'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Scan your code to show \nyour pass-vaccin and \nyour certificat pcr',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                  ),
                  maxLines: 3,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  child: Text('Click to scan'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
