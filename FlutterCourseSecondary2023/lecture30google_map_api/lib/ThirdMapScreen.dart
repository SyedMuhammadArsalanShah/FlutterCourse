import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ThirdMapScreen extends StatefulWidget {
  const ThirdMapScreen({super.key});

  @override
  State<ThirdMapScreen> createState() => _ThirdMapScreenState();
}

class _ThirdMapScreenState extends State<ThirdMapScreen> {
  TextEditingController searchController = TextEditingController();

  late String response;
  late Map response_map;
  late List response_list = [];

  Future getapi(String searchvalue) async {

    String searchinput=searchvalue;

    print("search value smas=>"+searchinput);
    String request="https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$searchinput&types=geocode&key=AIzaSyD9gajcQWir12l8mEgDzSdEY9_9byVV4OY";
    http.Response response = await http.get(Uri.parse(request));

    print("api data =>" + response.body);
    if (response.statusCode == 200) {
      setState(() {
        response_map = jsonDecode(response.body);
        response_list = response_map["predictions"];
      });
    }
  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getapi(searchController.text);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Place Api"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
             
              controller: searchController,
              decoration: InputDecoration(hintText: "Search By Here ....."),
               onChanged: (value) {

                getapi(value);
                print("search value smas=>"+value);

                setState(() {});
              },
            ),
            Expanded(
                child: ListView.builder(
              itemCount: response_list == null ? 0 : response_list.length,
              itemBuilder: (context, index) {
                var data= response_list[index];
                return ListTile(
                  leading: Icon(Icons.map),
                  title: Text(data["description"]),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}