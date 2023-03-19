import 'package:flutter/material.dart';

class ListEntry extends StatelessWidget {
  final String date;
  final String quantity;

  ListEntry({required this.date, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
