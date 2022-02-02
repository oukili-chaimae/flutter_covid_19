import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/config/palette.dart';
import 'package:flutter_covid_dashboard_ui/screens/home_screen.dart';
import 'package:flutter_covid_dashboard_ui/screens/welcome_screen.dart';
import 'package:flutter_covid_dashboard_ui/widgets/custom_app_bar.dart';

class info extends StatefulWidget {
  const info({Key? key}) : super(key: key);

  @override
  _infoState createState() => _infoState();
}

class _infoState extends State<info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              _back(context);
            },
            icon: Icon(Icons.arrow_back)),
        backgroundColor: Color(0xFF884081),
        elevation: 0,
        title: Text(
          "It's simple !",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            //color: Colors.blue,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 15),
          child: Center(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF884081),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Positioned(
                      right: 17,
                      top: 11,
                      child: Text(
                        "1",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Activate the application",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    // color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "By using your phone's bluetooth, our application detects the phones of other users who stay close to yours.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF884081),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Positioned(
                      right: 17,
                      top: 11,
                      child: Text(
                        "2",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Stay informed",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    //color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "You will be informed if you have been near a user who tests positive for COVID-19.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    //color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF884081),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Positioned(
                      right: 17,
                      top: 11,
                      child: Text(
                        "3",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "protect your family and others.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    // color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "If you have tested positive for COVID-19, you will receive a code to scan or enter with your positive test results or obtain it from the person who took the sample. This will allow you to anonymously notify users who have been nearby.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    // color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color(0xFF884081),
                                      Color(0xFFAD4081),
                                      Color(0xFFFF4081),
                                      Color(0xFFFF4081),
                                      Color(0xFFFF4081),
                                      Color(0xFFAD4081),
                                      Color(0xFF884081),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(8.0),
                                  primary: Colors.white,
                                  textStyle: const TextStyle(fontSize: 20),
                                ),
                                onPressed: () {
                                  _home(context);
                                },
                                child: const Text('Continue'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _home(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context) {
      return HomeScreen();
    });
    Navigator.of(context).push(route);
  }

  void _back(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context) {
      return WelcomeScreen();
    });
    Navigator.of(context).push(route);
  }
}
