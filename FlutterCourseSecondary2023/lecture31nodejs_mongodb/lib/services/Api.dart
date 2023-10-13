import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  late List userdata = [];
  // static const baseurl = "http://192.168.18.11:2000/api/";
  static const baseurl = "http://192.168.2.109:2000/api/";
  static postuserapi(Map udata) async {
    try {
      var response =
          await http.post(Uri.parse("${baseurl}add_infouser"), body: udata);

      if (response.statusCode == 200) {
        Map data = jsonDecode(response.body);

        print("WA 910=>${data.toString()}");
      } else {
        print("WA 910=> no response get ");
      }
    } catch (e) {
      print("smas=>" + e.toString());
    }
  }

  getuserapi() async {
    var response = await http.get(Uri.parse("${baseurl}get_userinfo"));
    try {
      if (response.statusCode == 200) {
        Map data = jsonDecode(response.body);
        userdata = data["userdata"];
        print("My get response WA910 =>${userdata.toString()} ");
      } else {
        print("API failed: ${response.statusCode}");
      }
    } catch (e) {
      print("Error fetching data: $e");
    }
  }
}
