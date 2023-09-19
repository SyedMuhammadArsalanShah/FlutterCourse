import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:lecture29firebaseproject1/Login.dart';
import 'package:lecture29firebaseproject1/Toastmsg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DatabaseReference dref = FirebaseDatabase.instance.ref("users");
  final key = FirebaseAuth.instance.currentUser!.uid;

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
                      dref.child(key).child("$id").set({
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
                      dref.child(key).child("$postid").update({
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
          title: Text("Welcome"),
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: searchCont,
                
                decoration: InputDecoration(
                  labelText: "Search By Title",
                  hintText: "Search Here"),
                onChanged: (String value) {
                  setState(() {});
                },
              ),
            ),


            
            Expanded(
              child: FirebaseAnimatedList(
                query: dref.child(key),
                itemBuilder: (context, snapshot, animation, index) {
                  // filter
                  final title = snapshot.child('Title').value.toString();
                  if (searchCont.text.isEmpty) {
                    return ListTile(
                      title: Text(snapshot.child('Title').value.toString()),
                      subtitle:
                          Text(snapshot.child('Description').value.toString()),
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
                                    final id =
                                        snapshot.child('Id').value.toString();
                                    showformmodel(
                                      context,  int.parse(id),  );
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
                                     or phir yeh id hum ne child ko pass karwadi and agr hum uper wali lety(int id =0) to us se hamesha humari value zero hi rehti */
                                    final id =
                                        snapshot.child('Id').value.toString();
                                    dref.child(key).child(id).remove();

                                    Navigator.pop(context);
                                  },
                                  leading: Icon(Icons.delete),
                                  title: Text("Delete"),
                                )),
                          ];
                        },
                      ),
                    );
                  } else if (title.contains(searchCont.text.toString())) {
                    return ListTile(
                      title: Text(snapshot.child('Title').value.toString()),
                      subtitle:
                          Text(snapshot.child('Description').value.toString()),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            )
          ],
        ));
  }
}

// Expanded(
//           child: StreamBuilder(
//         stream: dref.child(key).onValue,
//         builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
//           if (!snapshot.hasData) {
//             return CircularProgressIndicator();
//           } else {
//             Map<dynamic, dynamic> map =
//                 snapshot.data!.snapshot.value as dynamic;
//             List<dynamic> list = [];
//             list = map.values.toList();

//             return ListView.builder(
//               itemCount: snapshot.data!.snapshot.children.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(list[index]['Title']),
//                   subtitle:
//                       Text(list[index]['Description']),
//                 );
//               },
//             );
//           }
//         },
//       )),
