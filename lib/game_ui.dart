import 'package:flutter/material.dart';
import 'game_state.dart';

class GameUI extends StatefulWidget {
  @override
  _GameUIState createState() => _GameUIState();
}

class _GameUIState extends State<GameUI> {
  GameState _gameState = GameState();
  List<String> _combatLog = [];

  void _attack() {
    setState(() {
      _gameState.attack();
      _combatLog.add(_gameState.playerTurn
          ? 'Player attacks for ${_gameState.enemyHP} damage'
          : 'Enemy attacks for ${_gameState.playerHP} damage');
      if (_gameState.isGameOver()) {
        _combatLog.add(_gameState.playerHP <= 0 ? 'Enemy wins!' : 'Player wins!');
      }
    });
  }

  void _pass() {
    setState(() {
      _gameState.pass();
      _combatLog.add(_gameState.playerTurn ? 'Player passes' : 'Enemy passes');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interplanetary Wars'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Player HP: ${_gameState.playerHP}'),
                Text('Enemy HP: ${_gameState.enemyHP}'),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _combatLog.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_combatLog[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _gameState.isGameOver() ? null : _attack,
                  child: Text('Attack'),
                ),
                ElevatedButton(
                  onPressed: _gameState.isGameOver() ? null : _pass,
                  child: Text('Pass'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_gameState.playerTurn ? 'Player\'s Turn' : 'Enemy\'s Turn'),
          ),
        ],
      ),
    );
  }
}
