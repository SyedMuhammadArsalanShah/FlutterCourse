import 'package:flutter/material.dart';
import 'package:lecture31nodejs_mongodb/services/Api.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Api userApi = Api();
  bool isLoading = true;
  @override
  Future<void> fetchData() async {
    try {
      await userApi.getuserapi();
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print("Error fetching data: $e");
      setState(() {
        isLoading = false;
      });
    }
  }
  void initState() {
    // TODO: implement initState
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: userApi.userdata.length,
        itemBuilder: (context, index) {
          var data = userApi.userdata[index];
          return isLoading
              ? const Center(
                  child:
                      CircularProgressIndicator()) // Show a loading indicator while fetching data.
              : ListTile(
                  leading: Icon(Icons.storage),
                  title: Text(
                    data["email"],
                  ),
                  subtitle: Text(
                    data["pass"],
                  ),
                );
        },
      ),
    );
  }
}
