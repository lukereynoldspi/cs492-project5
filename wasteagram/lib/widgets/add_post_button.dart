import 'package:flutter/material.dart';

class AddPostButton extends StatelessWidget {
  final String routeName;
  const AddPostButton({Key? key, required this.routeName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.camera_alt),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
