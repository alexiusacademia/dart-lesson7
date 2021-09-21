// Control flow and conditional statements
import 'dart:io';
import 'package:app/display_intro.dart';
import 'package:app/game_logic.dart';

void main(List<String> arguments) {
  const exitCode = 'q';

  displayIntro(exitCode);

  // Declare the lucky number.
  int luckyNumber = 45;

  // Declare variable for user input.
  var guess = '';

  guess = stdin.readLineSync()!;

  while (guess != exitCode) {
    var gl = gameLogic(guess, luckyNumber);

    if (gl == 0) {
      exit(0);
    }

    guess = stdin.readLineSync()!;
  }
}
