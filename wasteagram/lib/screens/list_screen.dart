import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wasteagram/widgets/list_entry.dart';
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
      body: Column(
        children: const [
          ListEntry(
              routeName: "screens/post_view_screen.dart",
              date: "Thursday, January 30, 2020",
              quantity: "1"),
          ListEntry(
              routeName: "screens/post_view_screen.dart",
              date: "Thursday, January 30, 2020",
              quantity: "1"),
        ],
      ),
      floatingActionButton: const AddPostButton(
        routeName: "screens/post_creation_screen.dart",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
