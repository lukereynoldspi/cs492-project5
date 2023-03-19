import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../widgets/add_post_button.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wasteagram', textAlign: TextAlign.center),
        centerTitle: true,
      ),
      body: const Center(
        child: AddPostButton(
          routeName: "screens/post_creation_screen.dart",
        ),
      ),
    );
  }
}
