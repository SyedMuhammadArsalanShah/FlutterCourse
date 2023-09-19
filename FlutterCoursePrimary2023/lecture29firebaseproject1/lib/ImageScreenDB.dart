import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lecture29firebaseproject1/toastmsg.dart';

class ImageScreenDB extends StatefulWidget {
  const ImageScreenDB({super.key});

  @override
  State<ImageScreenDB> createState() => _ImageScreenDBState();
}

class _ImageScreenDBState extends State<ImageScreenDB> {
  File? image;

  final imagepicker = ImagePicker();
  DatabaseReference dref = FirebaseDatabase.instance.ref("images");
  final storageRef = FirebaseStorage.instance.ref("NewImagesFolder");
  final key = FirebaseAuth.instance.currentUser!.uid;
  int id = 0;

  Future getimagefromgallery() async {
    final pickedFile = await imagepicker.pickImage(
        source: ImageSource.gallery, imageQuality: 100);
    setState(() {});
    if (pickedFile != null) {
      image = File(pickedFile.path);
    } else {
      Toastmsg().toast("No image Selected");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image == null ? Text("No Image Here") : Image.file(image!.absolute),
            ElevatedButton(
                onPressed: () {
                  getimagefromgallery();
                },
                child: Text("Select An Image")),
            ElevatedButton(
                onPressed: () async {
                  id++;

                  final refimg =
                      await storageRef.child("img").child("$key/$id");

                  UploadTask uploadTask = refimg.putFile(image!.absolute);

                  Future.value(uploadTask).then((value) async {
                    final downloadurl = await refimg.getDownloadURL();

                    print("Image Url WA910 => $downloadurl");

                    dref
                        .child(key)
                        .child("$id")
                        .set({"Id": id, "imageurl": downloadurl}).then((value) {
                      Toastmsg().toast("Image Uploaded in db");
                    }).onError((error, stackTrace) {
                      Toastmsg().toast(error.toString());
                    });

                    Toastmsg().toast("Image Uploaded");
                  }).onError((error, stackTrace) {
                    Toastmsg().toast(error.toString());
                  });
                },
                child: Text("Upload  Image")),
          ],
        ),
      ),
    );
  }
}
