import 'package:flutter/material.dart';

class NumberInputField extends StatefulWidget {
  final String labelText;
  final Function(int) numberInput;

  const NumberInputField({Key? key, required this.labelText, required this.numberInput}) : super(key: key);

  @override
  _NumberInputFieldState createState() => _NumberInputFieldState();
}

class _NumberInputFieldState extends State<NumberInputField> {
  int input = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        decoration: InputDecoration(
          labelText: widget.labelText,
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.number,
        onChanged: (value) {
          setState(() {
            input = int.tryParse(value) ?? 0;
          });
          widget.numberInput(input);
        },
      ),
    );
  }
}
