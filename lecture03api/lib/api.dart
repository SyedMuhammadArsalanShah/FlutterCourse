import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api extends StatefulWidget {
  const Api({Key? key}) : super(key: key);

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  getuser() async {
    var usersdata = [];
    var res =
        await http.get(Uri.https('jsonplaceholder.typicode.com', 'users'));
    var jsondata = jsonDecode(res.body);

    // print(jsondata);

    for (var i in jsondata) {
      Usermodel user = Usermodel(
          i['name'], i['username'], i['email'], i['address']['suite']);

      usersdata.add(user);
    }

    return usersdata;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: getuser(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.data == null) {
          return Text("Nothing Show ");
        } else
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text(snapshot.data[i].namee),
                subtitle: Text(snapshot.data[i].address),
              );
            },
          );
      },
    ));
  }
}

class Usermodel {
  var namee;
  var username;
  var email;
  var address;
  Usermodel(this.namee, this.username, this.email, this.address);
}
