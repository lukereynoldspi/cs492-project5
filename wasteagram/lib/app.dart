import 'package:flutter/material.dart';

import 'screens/list_screen.dart';
import 'screens/post_creation_screen.dart';
import 'screens/post_view_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'screens/post_creation_screen.dart': (context) =>
            const PostCreationScreen(),
        'screens/post_view_screen.dart': (context) => const PostViewScreen(),
      },
      title: 'Wasteagram',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListScreen();
  }
}
