// Control flow and conditional statements
import 'dart:io';

void main(List<String> arguments) {
  const exitCode = 'q';

  print('Welcome to mobile legends!');
  print('= = = = =');
  print('Guess the number!');
  print('Enter a number. Enter [$exitCode] to exit the game: ');

  // Declare the lucky number.
  int luckyNumber = 45;

  // Declare variable for user input.
  var guess = '';

  guess = stdin.readLineSync()!;

  while (guess != exitCode) {
    if (int.parse(guess) < luckyNumber) {
      print('Guess higher!');
    } else if (int.parse(guess) > luckyNumber) {
      print('Guess lower!');
    } else {
      print('JACKPOT!!! Congratulations!');
      
      return;
    }

    guess = stdin.readLineSync()!;
  }
}
