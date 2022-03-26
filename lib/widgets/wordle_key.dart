import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wordle_clone/providers/game_state_provider.dart';

class WordleKey extends ConsumerWidget {
  final String letter;

  const WordleKey(this.letter, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      Widget keyCap;
      double width =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 50
              : 60;
      if (letter == "_") {
        keyCap = const Icon(Icons.keyboard_return, size: 20);
      } else if (letter == "<") {
        keyCap = const Icon(Icons.backspace_outlined, size: 20);
      } else {
        width = sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? 30
            : 40;
        keyCap = Text(
          letter.toUpperCase(),
          style: TextStyle(
            fontSize:
                sizingInformation.deviceScreenType == DeviceScreenType.mobile
                    ? 18
                    : 20,
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
    });
  }
}
