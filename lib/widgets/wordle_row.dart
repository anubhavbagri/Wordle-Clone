import 'package:flutter/material.dart';
import 'package:wordle_clone/widgets/wordle_letterbox.dart';

class WordleRow extends StatelessWidget {
  final int wordSize;
  final String word;

  const WordleRow({Key? key, required this.wordSize, required this.word})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<WordleLetterbox> boxes = List.empty(growable: true);

    for (int j = 0; j < wordSize; j++) {
      if (word.length > j) {
        boxes.add(WordleLetterbox(letter: word[j]));
      } else {
        boxes.add(WordleLetterbox());
      }
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: boxes,
    );
  }
}
