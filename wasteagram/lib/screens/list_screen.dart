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
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('posts').snapshots(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.docs.length,
              itemBuilder: (context, index) {
                var post = snapshot.data.docs[index];
                return ListEntry(
                  routeName: "screens/post_view_screen.dart",
                  date: post['date'].toString(),
                  quantity: post['quantity'].toString(),
                );
              },
            );
          }
          return const SizedBox.shrink();
        },
      ),
      floatingActionButton: const AddPostButton(
        routeName: "screens/post_creation_screen.dart",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
