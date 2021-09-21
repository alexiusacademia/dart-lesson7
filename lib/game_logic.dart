int gameLogic(String guess, int luckyNumber) {
  if (int.parse(guess) < luckyNumber) {
    print('Guess higher!');
  } else if (int.parse(guess) > luckyNumber) {
    print('Guess lower!');
  } else {
    print('JACKPOT!!! Congratulations!');

    return 0;
  }
  return 1;
}