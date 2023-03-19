import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../widgets/upload_post_button.dart';

class PostViewScreen extends StatefulWidget {
  const PostViewScreen({Key? key}) : super(key: key);

  @override
  _PostViewScreen createState() => _PostViewScreen();
}

class _PostViewScreen extends State<PostViewScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String date = arguments['date'];
    final String quantity = arguments['quantity'];
    final String imageURL = arguments['imageURL'];
    final String latitude = arguments['latitude'];
    final String longitude = arguments['longitude'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wasteagram'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(date,
            style: const TextStyle(
              color: Color.fromARGB(179, 0, 0, 0),
              fontSize: 36.0,
            ),
            textAlign: TextAlign.center),
        Image(
          width: 200,
          height: 200,
          image: NetworkImage(imageURL),
        ),
        Center(
          child: Text(
            "$quantity Item(s)",
            style: const TextStyle(
              fontSize: 64.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Center(
          child: Text(
            "Location: ($latitude, $longitude)",
            style: const TextStyle(
              fontSize: 32.0,
            ),
          ),
        ),
      ]),
    );
  }
}
