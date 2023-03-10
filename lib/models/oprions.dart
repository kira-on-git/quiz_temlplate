// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  final String answerText;
  final bool isSubmitPressed;
  final int id, answer;

  const Answer({
    super.key,
    required this.answerText,
    required this.id,
    required this.answer,
    required this.isSubmitPressed,
  });
//  int get id => _id;
  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  late Color? _activColor = Colors.purple;
  int? _selectedOption; // index -> value, bei select value == index

  int? _id;
  late int _answer;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 6.0, bottom: 6.0),
      child: Material(
        child: RadioListTile<int>(
          tileColor: Colors.white12,
          title: Text(widget.answerText),
          subtitle: const Text('Richtig'),
          controlAffinity: ListTileControlAffinity.trailing,
          dense: true, //Sriftgröße klein
          // contentPadding:
          //     const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          activeColor: _activColor,
          value: widget.id,
          groupValue: _selectedOption,
          onChanged: (int? value) {
            if (widget.isSubmitPressed) {
              null;
            } else {
              setState(() => _selectedOption = value);
            }
          },
        ),
      ),
    );
  }
}
