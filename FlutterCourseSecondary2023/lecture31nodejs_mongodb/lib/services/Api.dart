import 'dart:convert';

import 'package:connectivity/connectivity.dart';
import 'package:http/http.dart' as http;

class Api {
  static const baseurl = "http://192.168.2.109:2000/api/";

  static addpost(Map pdata) async {
    // var connectivityResult = await (Connectivity().checkConnectivity());
    // if (connectivityResult == ConnectivityResult.wifi ||
    //     connectivityResult == ConnectivityResult.mobile) {
    //   var ipAddress = await Connectivity().getWifiIP();
    //   print("Device IP address: $ipAddress");
    // } else {
    //   print("Device is not connected to a network.");
    // }

    print("my map data =>$pdata");
    var url = Uri.parse("${baseurl}add_user");

    try {
      final response = await http.post(url, body: pdata);

      if (response.statusCode == 200) {
        Map data = jsonDecode(response.body.toString());
        print("wa => ${data.toString()}");
      } else {
        print("wa =>Failed to get response ");
      }
    } catch (e) {
      print("wa910" + e.toString());
    }
  }
}
