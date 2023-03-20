import 'package:flutter/material.dart';

class ListEntryModel {
  final String routeName;
  final String date;
  final String quantity;
  final String imageURL;
  final String latitude;
  final String longitude;

  const ListEntryModel({
    required this.routeName,
    required this.date,
    required this.quantity,
    required this.imageURL,
    required this.latitude,
    required this.longitude,
  });
}

class ListEntryWidget extends StatelessWidget {
  final ListEntryModel model;

  const ListEntryWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          model.routeName,
          arguments: {
            'date': model.date,
            'quantity': model.quantity,
            'imageURL': model.imageURL,
            'latitude': model.latitude,
            'longitude': model.longitude,
          },
        );
      },
      child: ListTile(
        title: Row(
          children: [
            Expanded(
              flex: 2,
              child: Text(model.date),
            ),
            Expanded(
              flex: 1,
              child: Text(
                model.quantity,
                textAlign: TextAlign.right,
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
