import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddPostButton extends StatelessWidget {
  final String routeName;

  const AddPostButton({required this.routeName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Add a new post button',
      child: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.camera_alt),
        
      ),
    );
  }
}
