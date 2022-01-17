import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/screens/details_display_screen.dart';
import 'package:flutter_covid_dashboard_ui/screens/qr_code.dart';
import 'package:flutter_covid_dashboard_ui/screens/qr_code_screen.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'intances.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    myData.initDb(callbackList);
  }

  void _addQrCode() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => QrCodeScreen(callback: callback)),
    );
  }

  void callback(MyQrCode qrCode) {
    setState(() {
      myData.qrCodes?.add(qrCode);
    });
  }

  void callbackList(List<MyQrCode> qrCodes) {
    setState(() {
      myData.qrCodes = qrCodes;
    });
  }

  static const IconData qr_code_scanner_rounded =
      IconData(0xf00cc, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: myData.qrCodes != null
              ? ListView.builder(
                  itemCount: myData.qrCodes?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsDisplayScreen(
                              callBack: callbackList,
                              qrCode: myData.qrCodes![index],
                            ),
                          ),
                        );
                      },
                      child: ListTile(
                        leading: QrImage(
                          data: myData.qrCodes![index].content.toString(),
                          version: QrVersions.auto,
                          size: 50.0,
                        ),
                        title: Text(myData.qrCodes![index].type.toString()),
                        subtitle: Text(formatDate(myData.qrCodes![index].date)),
                      ),
                    );
                  })
              : const CircularProgressIndicator()),
      floatingActionButton: FloatingActionButton(
        onPressed: _addQrCode,
        tooltip: 'New QrCode',
        child: const Icon(qr_code_scanner_rounded),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
