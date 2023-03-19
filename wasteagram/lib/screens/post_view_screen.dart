import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../widgets/upload_post_button.dart';

class PostViewScreen extends StatefulWidget {
  const PostViewScreen({Key? key}) : super(key: key);

  @override
  _PostViewScreen createState() => _PostViewScreen();
}

class _PostViewScreen extends State<PostViewScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String date = arguments['date'];
    final String quantity = arguments['quantity'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wasteagram'),
        centerTitle: true,
      ),
      body: Column(children: [
        Text(date,
            style: const TextStyle(
              color: Color.fromARGB(179, 0, 0, 0),
              fontSize: 36.0,
            ),
            textAlign: TextAlign.center),
        Center(
          child: Text(
            "$quantity Item(s)",
            style: const TextStyle(
              fontSize: 64.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ]),
    );
  }
}
