import 'package:flutter_covid_dashboard_ui/screens/objectbox.g.dart';
import 'package:flutter_covid_dashboard_ui/screens/qr_code.dart';

class MyData {
  List<MyQrCode>? qrCodes = null;
  var box = null;

  data() {}

  Future<void> initDb(Function callback) async {
    qrCodes = <MyQrCode>[];
    if (box == null) {
      final store = await openStore();
      box = store.box<MyQrCode>();
    }

    qrCodes?.addAll(box.getAll());
    callback(qrCodes);
  }
}
