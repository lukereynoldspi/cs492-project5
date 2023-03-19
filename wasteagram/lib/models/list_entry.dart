import 'package:flutter/material.dart';

class ListEntry extends StatelessWidget {
  final String routeName;
  final String date;
  final String quantity;
  final String imageURL;
  final String latitude;
  final String longitude;

  const ListEntry({
    super.key,
    required this.routeName,
    required this.date,
    required this.quantity,
    required this.imageURL,
    required this.latitude,
    required this.longitude,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          routeName,
          arguments: {
            'date': date,
            'quantity': quantity,
            'imageURL': imageURL,
            'latitude': latitude,
            'longitude': longitude,
          },
        );
      },
      child: ListTile(
        title: Row(
          children: [
            Expanded(
              flex: 2,
              child: Text(date),
            ),
            Expanded(
              flex: 1,
              child: Text(
                quantity,
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
