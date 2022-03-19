import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wordle_clone/providers/game_state_provider.dart';

class WordleKey extends ConsumerWidget {
  final String letter;

  const WordleKey(this.letter, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget keyCap;
    double width = 60;
    if (letter == "_") {
      keyCap = const Icon(Icons.keyboard_return, size: 20);
    } else if (letter == "<") {
      keyCap = const Icon(Icons.backspace_outlined, size: 20);
    } else {
      width = 40;
      keyCap = Text(
        letter,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      );
    }

    return InkWell(
      child: Container(
        width: width,
        height: 55,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(3),
        decoration: const BoxDecoration(
          color: Color.fromARGB(44, 44, 44, 44),
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: keyCap,
      ),
      onTap: () {
        ref.read(gameStateProvider.notifier).updateCurrentAttempt(letter);
      },
    );
  }
}
