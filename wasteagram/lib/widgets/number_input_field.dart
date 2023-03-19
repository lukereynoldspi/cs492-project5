import 'package:flutter/material.dart';

class NumberInputField extends StatefulWidget {
  final String labelText;
  final Function(int) numberInput;

  const NumberInputField(
      {Key? key, required this.labelText, required this.numberInput})
      : super(key: key);

  @override
  _NumberInputFieldState createState() => _NumberInputFieldState();
}

class _NumberInputFieldState extends State<NumberInputField> {
  int input = 0;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: "Number Input Field",
      value: input.toString(),
      child: Center(
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
      ),
    );
  }
}
