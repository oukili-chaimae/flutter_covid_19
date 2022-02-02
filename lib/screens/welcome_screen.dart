import 'dart:ffi';
import 'package:flutter_covid_dashboard_ui/screens/home_screen.dart';
import 'package:flutter_covid_dashboard_ui/screens/screens.dart';

import 'info.dart';

import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  "Welcome to our application",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF884081),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: Colors.grey.withOpacity(.8)))),
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/images/cov.jpg'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 0,
                          vertical: 3,
                        ),
                        child: Text(
                          "Be alert and alert others to exposure to COVID-19.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            // color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 5),
                        child: Text(
                          "With our application, participate in the fight against the epidemic by reducing the risk of transmission.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            // color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 5),
                        child: Text(
                          "This application was produced in collaboration with the Ministry of Solidarity and Public Health of Morocco.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            //color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
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
                                _info(context);
                              },
                              child: const Text('I want to participate'),
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
    );
  }

  void _info(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context) {
      return info();
    });
    Navigator.of(context).push(route);
  }
}
