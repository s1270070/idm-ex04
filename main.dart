import 'dart:math';

class HeadsOrTails {
  int _heads = 0;
  int _tails = 0;

  HeadsOrTails();

  String _round() {
    final result = Random().nextBool();

    result ? _heads++ : _tails++;
    return result ? 'Heads' : 'Tails';
  }

  void app() {
    print('Tossing a coin...');

    /* game start */
    for (int i = 0; i < 3; i++) {
      print('Round ${i + 1}: ${_round()}');
    }

    /* print result */
    print('Heads: $_heads, Tails: $_tails');
  }
}

main() {
  final game = HeadsOrTails();
  game.app();
}
