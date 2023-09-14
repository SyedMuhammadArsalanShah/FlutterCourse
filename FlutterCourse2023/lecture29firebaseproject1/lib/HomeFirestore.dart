import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:lecture29firebaseproject1/Login.dart';
import 'package:lecture29firebaseproject1/Toastmsg.dart';

class HomeFirestore extends StatefulWidget {
  const HomeFirestore({super.key});

  @override
  State<HomeFirestore> createState() => _HomeFirestoreState();
}

class _HomeFirestoreState extends State<HomeFirestore> {
  final firestore = FirebaseFirestore.instance.collection("FinalUser");

  final key = FirebaseAuth.instance.currentUser!.uid;
  // wrap on ListViewbuilder
  final getalldata = FirebaseFirestore.instance
      .collection("FinalUser")
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .collection("myuserspost")
      .snapshots();

// another child
  int id = 0;
// createData

  var titleController = TextEditingController();
  var descController = TextEditingController();
  var searchCont = TextEditingController();

  showformmodel(context, int? postid) async {
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
                    // ab agr post  id null  hogi to add wala task open hoga warna update ka
                    if (postid == null) {
                      id++;
                      // dref.child(key).child("$id")

                      firestore
                          .doc(key)
                          .collection("myuserspost")
                          .doc("$id")
                          .set({
                        "Id": id,
                        "Title": titleController.text,
                        "Description": descController.text,
                        "Dateofpost": DateTime.now().toString()
                      }).then((value) {
                        Toastmsg().toast("Successfully Uploaded");
                      }).onError((error, stackTrace) {
                        Toastmsg().toast("$error");
                      });
                    } else {
                      // dref.child(key).child("$postid")
                      firestore
                          .doc(key)
                          .collection("myuserspost")
                          .doc("$postid")
                          .update({
                        "Id": postid,
                        "Title": titleController.text,
                        "Description": descController.text,
                        "Dateofpost": DateTime.now().toString()
                      }).then((value) {
                        Toastmsg().toast("Successfully Updated");
                      }).onError((error, stackTrace) {
                        Toastmsg().toast("$error");
                      });
                    }

                    Navigator.pop(context);
                  },
                  child:
                      postid == null ? Text("Add Post") : Text("Update Post")),
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
          title: Text("Welcome firestore"),
          actions: [
            IconButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut().then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  });
                },
                icon: Icon(Icons.logout_outlined))
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: getalldata,
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(child: CircularProgressIndicator());
                      } else {
                  return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      final data = snapshot.data!.docs[index];
                          // for null checkcorrect condition exception
                        return ListTile(
                          title: Text(data["Title"].toString()),
                          subtitle: Text(data['Description'].toString()),
                          trailing: PopupMenuButton(
                            icon: Icon(Icons.menu_sharp),
                            itemBuilder: (context) {
                              return [
                                PopupMenuItem(
                                    value: 1,
                                    child: ListTile(
                                      onTap: () {
                                        /*
                                      edit  main bhi hum logon ne delete ki tarah id get ki db se  than showform model ko de di jis se hum model bottom sheet open karwarahy hain ab chalty hain show model form pr
            
                                      */
                                        final id = data['Id'].toString();
                                        showformmodel(context, int.parse(id));
                                      },
                                      leading: Icon(Icons.edit),
                                      title: Text("Edit"),
                                    )),
                                PopupMenuItem(
                                    value: 2,
                                    child: ListTile(
                                      onTap: () {
                                        /*
                                       jesy humne search ke liye title
                                       ko liye tha na snapshot main se
                                       warisha beta wesy hi hum ne id ko liya hai
                                       or phir yeh id hum ne child ko pass karwadi and agr hum uper
                                        wali lety(int id =0) to us se hamesha humari value zero hi rehti */
                                        final id = data['Id'].toString();
                                        // dref.child(key).child(id).remove();

                                        firestore
                                            .doc(key)
                                            .collection("myuserspost")
                                            .doc(id)
                                            .delete();

                                        Navigator.pop(context);
                                      },
                                      leading: Icon(Icons.delete),
                                      title: Text("Delete"),
                                    )),
                              ];
                            },
                          ),
                        );
                      }
                    ,
                  );
                }},
              ),
            )
          ],
        ));
  }
}
