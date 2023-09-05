import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:lecture29firebaseproject1/Login.dart';
import 'package:lecture29firebaseproject1/Toastmsg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
// createData

  var titleController = TextEditingController();
  var descController = TextEditingController();

  showformmodel(context, int? key) async {
    titleController.clear();
    descController.clear();

    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.fromLTRB(
              32, 32, 32, MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(hintText: "Enter Your Title "),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: descController,
                decoration: InputDecoration(hintText: "Enter Your Description"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () async {

                    
                            DatabaseReference dref =
                        FirebaseDatabase.instance.ref("users");
                           
                         final key= FirebaseAuth.instance.currentUser!.uid;
                         dref.child(key).child(DateTime.now().microsecondsSinceEpoch.toString()).set({
                          "Title":titleController.text,
                          "Description":descController.text,
                          "Dateofpost": DateTime.now().toString()
                         }).then((value) {Toastmsg().toast("Successfully Uploaded");})
                         .onError((error, stackTrace) {Toastmsg().toast("${error}");});

  
                  

                    Navigator.pop(context);
                  },
                  child: Text("Add Text")),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showformmodel(context, null);
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text("Welcome"),
          actions: [
            IconButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut()
                  .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  });
                },
                icon: Icon(Icons.logout_outlined))
          ],
        ),
        body: Center(
          child: Container(
            child: Text("Home Screen"),
          ),
        ));
  }
}
