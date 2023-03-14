import 'package:flutter/material.dart';

class Post {
  late DateTime date;
  late String imageURL;
  late int quantity;
  late double latitude;
  late double longitude;

  Post(
      {required this.date,
      required this.imageURL,
      required this.quantity,
      required this.latitude,
      required this.longitude});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      date: DateTime.parse(json['date']),
      imageURL: json['imageURL'],
      quantity: json['quantity'],
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }

  Map<String, dynamic> toJson() => {
        'date': date.toIso8601String(),
        'imageURL': imageURL,
        'quantity': quantity,
        'latitude': latitude,
        'longitude': longitude,
      };
}
