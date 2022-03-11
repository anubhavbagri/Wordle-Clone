import 'package:flutter/material.dart';
import 'package:wordle_clone/widgets/wordle_letterbox.dart';

const rows = 6;
const wordSize = 5;

class WordleGrid extends StatelessWidget {
  const WordleGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<List<Widget>> wordleRows = List.empty(growable: true);

    for (int i = 0; i < rows; i++) {
      wordleRows.add(List.empty(growable: true));
      for (int j = 0; j < wordSize; j++) {
        wordleRows[i].add(WordleLetterbox());
      }
    }

    return Container(
      child: Text('grid'),
    );
  }
}
