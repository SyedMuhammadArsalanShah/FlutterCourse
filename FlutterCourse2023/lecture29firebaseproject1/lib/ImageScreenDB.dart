import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lecture29firebaseproject1/Toastmsg.dart';

import 'package:firebase_storage/firebase_storage.dart';

class ImageScreenDB extends StatefulWidget {
  const ImageScreenDB({super.key});

  @override
  State<ImageScreenDB> createState() => _ImageScreenDBState();
}

class _ImageScreenDBState extends State<ImageScreenDB> {
  File? image;
  final imagepicker = ImagePicker();

  final storage = FirebaseStorage.instance.ref("AllImages");
  final key = FirebaseAuth.instance.currentUser!.uid;

  int id = 0;

  Future getImageFromGallery() async {
    final pickedFile = await imagepicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);
    setState(() {});
    if (pickedFile != null) {
      image = File(pickedFile.path);
    } else {
      Toastmsg().toast("No Image Selected");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Screen "),
      ),
      body: Column(children: [
        image == null ? Text("Text Iamge") : Image.file(image!.absolute),
        ElevatedButton(
            onPressed: () {
              getImageFromGallery();
            },
            child: Text("Select an Image")),
        ElevatedButton(
            onPressed: () async {
              id++;
              final refimg = storage.child("Images/$key").child("$id");

              UploadTask uploadTask = refimg.putFile(image!.absolute);

              Future.value(uploadTask).then((value) async {

               final uploadimageurl= await refimg.getDownloadURL();
                print("Image Url $uploadimageurl");

              });
            },
            child: Text("Upload This Image")),
      ]),
    );
  }
}
