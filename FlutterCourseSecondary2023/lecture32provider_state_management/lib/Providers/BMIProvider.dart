import 'package:flutter/material.dart';

class BMIProvider extends ChangeNotifier {
  String _result = "";
  String _msg = "";
  MaterialColor _bgcolor = Colors.indigo;

  String get result => _result;
  String get msg => _msg;
  MaterialColor get bgcolor => _bgcolor;

  void resultsbmi(res) {
    _result = res;

    notifyListeners();
  }

  void msgclr(msg, clr) {
    _msg = msg;
    _bgcolor = clr;

    notifyListeners();
  }
}
