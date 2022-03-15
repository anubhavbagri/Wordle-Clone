import 'package:flutter/material.dart';
import 'package:wordle_clone/widgets/wordle_grid.dart';
import 'package:wordle_clone/widgets/wordle_keyboard.dart';
import 'package:wordle_clone/widgets/wordle_title_bar.dart';

class WordlePage extends StatelessWidget {
  const WordlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: Text('WORDLE'),
        // ),
        body: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [WordleTitleBar(), WordleGrid(), WordleKeyboard()],
          ),
        ),
      ),
    );
  }
}
