import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/list_entry.dart';
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
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData &&
              snapshot.data != null &&
              snapshot.data!.docs.isNotEmpty) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                var post = snapshot.data!.docs[index];
                ListEntryModel listEntryData = ListEntryModel(
                    routeName: "screens/post_view_screen.dart",
                    date: post['date'].toString(),
                    quantity: post['quantity'].toString(),
                    imageURL: post['imageURL'].toString(),
                    latitude: post['latitude'].toStringAsFixed(2).toString(),
                    longitude: post['longitude'].toStringAsFixed(2).toString());
                ListEntryWidget widget = ListEntryWidget(model: listEntryData);
                return widget;
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: const AddPostButton(
        routeName: "screens/post_creation_screen.dart",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
