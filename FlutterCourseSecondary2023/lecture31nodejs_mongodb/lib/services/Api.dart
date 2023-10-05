import 'package:http/http.dart' as http;

class Api {
  String baseurl = "";

  void addpost(Map pdata) async {
      await http.post(Uri(), body: pdata);
  }
}
