import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddPostButton extends StatelessWidget {
  final String routeName;
  final VoidCallback? onPressed;

  const AddPostButton({required this.routeName, this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Add a new post button',
      child: FloatingActionButton(
        onPressed: onPressed != null ? onPressed! : () {
          Navigator.pushNamed(context, routeName);
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}
