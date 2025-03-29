import 'dart:math';

class GameState {
  int playerHP;
  int enemyHP;
  bool playerTurn;
  Random rng;

  GameState()
      : playerHP = 100,
        enemyHP = 100,
        playerTurn = true,
        rng = Random();

  void attack() {
    int damage = 10 + rng.nextInt(5);
    if (playerTurn) {
      enemyHP -= damage;
    } else {
      playerHP -= damage;
    }
    playerTurn = !playerTurn;
  }

  void pass() {
    playerTurn = !playerTurn;
  }

  bool isGameOver() {
    return playerHP <= 0 || enemyHP <= 0;
  }
}
