import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_settings/flutter_cupertino_settings.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/scheduler.dart';

class ParamtersScreen extends StatefulWidget {
  const ParamtersScreen({Key? key}) : super(key: key);

  @override
  _ParamtersScreenState createState() => _ParamtersScreenState();
}

class _ParamtersScreenState extends State<ParamtersScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Settings', style: TextStyle(color: Colors.white)),
          backgroundColor: Color(0xFF884081),
        ),
        child: CupertinoSettings(
          items: <Widget>[
            const CSHeader('Languages'),
            CSSelection<int>(
              items: const <CSSelectionItem<int>>[
                CSSelectionItem<int>(text: 'English', value: 0),
                CSSelectionItem<int>(text: 'Francais', value: 1),
                CSSelectionItem<int>(text: 'العربية', value: 2),
              ],
              onSelected: (value) => setState(() => _index = value),
              currentSelection: _index,
            ),
            const CSHeader(""),
          ],
        ));
  }
}
