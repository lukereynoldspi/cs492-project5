import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../widgets/upload_post_button.dart';
import '../widgets/number_input_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PostCreationScreen(),
    );
  }
}

class PostCreationScreen extends StatefulWidget {
  const PostCreationScreen({Key? key}) : super(key: key);

  @override
  _PostCreationScreenState createState() => _PostCreationScreenState();
}

class _PostCreationScreenState extends State<PostCreationScreen> {
  int wastedItems = 0;
  final String currentDate =
      DateFormat('EEEE, MMMM d, y').format(DateTime.now());
  final picker = ImagePicker();
  late ImageProvider postImage = const AssetImage('assets/images/test.png');

  @override
  void initState() {
    super.initState();
    getImageFromGallery();
  }

  Future<void> getImageFromGallery() async {
    final pickedFile =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 50);
    setState(() {
      if (pickedFile != null) {
        postImage = FileImage(File(pickedFile.path));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Post'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            currentDate,
            style: const TextStyle(
              color: Color.fromARGB(179, 0, 0, 0),
              fontSize: 36.0,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: postImage,
              ),
            ),
          ),
          NumberInputField(
            labelText: 'Number of Wasted Items',
            numberInput: (value) {
              setState(() {
                wastedItems = value;
              });
            },
          ),
        ],
      ),
      bottomNavigationBar: const UploadPostButton(),
    );
  }
}
