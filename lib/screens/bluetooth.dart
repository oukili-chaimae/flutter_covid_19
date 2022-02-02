import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:device_info/device_info.dart';

class Bluetooth extends StatefulWidget {
  const Bluetooth({Key? key}) : super(key: key);

  @override
  _BluetoothState createState() => _BluetoothState();
}

class _BluetoothState extends State<Bluetooth> {
  DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
}
