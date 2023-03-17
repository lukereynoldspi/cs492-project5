import 'package:flutter/material.dart';
import '../widgets/upload_post_button.dart';
//import 'package:location/location.dart';

void main() {
  PostCreationScreen;
}

class PostCreationScreen extends StatefulWidget {
  const PostCreationScreen({Key? key}) : super(key: key);

  @override
  _PostCreationScreen createState() => _PostCreationScreen();
}

class _PostCreationScreen extends State<PostCreationScreen> {
  final int _postCount = 0;
  final String _currentDate = DateTime.now().toString();
  //LocationData? _locationData;
/*
  void _getLocation() async {
    final location = Location();
    final hasPermission = await location.requestPermission();
    if (hasPermission == PermissionStatus.granted) {
      final data = await location.getLocation();
      setState(() {
        _locationData = data;
      });
    }
  } */

  @override
  void initState() {
    super.initState();
    //_getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Post'),
        centerTitle: true,
      ),
      body: Column(children: [
        Text(_currentDate,
            style: const TextStyle(
              color: Color.fromARGB(179, 0, 0, 0),
              fontSize: 36.0,
            ),
            textAlign: TextAlign.center),
        Center(
          child: Text(
            '$_postCount',
            style: const TextStyle(
              fontSize: 64.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ]),
      bottomNavigationBar: const UploadPostButton(),
    );
  }
}
