# Interplanetary Wars

Interplanetary Wars is a simple turn-based strategy game built with Flutter and targeting the web. The game is designed to be a minimal but expandable combat simulation between a player and an enemy faction in a sci-fi setting.

## 🎮 Game Overview

- Each player starts with a planet that has 100 HP.
- Turns alternate between the **player** and the **enemy**.
- Each turn, the active side can **attack** or **pass**.
- Attacking reduces the opponent's planet HP based on your attack power.
- Attack damage is calculated as a base value plus a random bonus.
- The first side to reduce the opponent's HP to 0 wins.

## 🚀 MVP Features

- 🔁 Turn-based combat system
- 💥 Simple attack mechanic with RNG
- ❤️ HP tracking for both player and enemy
- 🧠 Basic AI enemy (automatically attacks or passes)
- 💾 Game state stored in memory (no persistent save for now)

## 📱 UI Layout

- Player HP and Enemy HP display
- "Attack" and "Pass" buttons for the player
- Combat log showing attack results
- Turn indicator

## 🧠 Game Logic

- Planet HP: starts at 100
- Player turn:
  - Choose to "Attack" or "Pass"
  - If attacking: deal `baseDamage + Random(0~4)`
- Enemy turn (auto):
  - Always attacks for now (can be expanded later)

## 📦 Tech Stack

- Flutter 3.x
- Dart
- Web build (compatible with GitHub Pages)

## 📂 Suggested File Structure

lib/ 
├── main.dart # App entry point and root widget 
├── game_state.dart # Game logic and state (turn, HP, RNG) 
├── game_ui.dart # UI for HP bars, buttons, log


## 🔧 Future Enhancements (Post-MVP)

- Multiple units / fleets
- Map with grid-based movement
- Resource management and upgrades
- Persistent storage (Hive or shared_preferences)
- Sound effects and animations

## 📦 Deployment Target

This project is intended to be built for the web and deployed on GitHub Pages.

## ✍️ Prompt for Copilot Workspace

> Build a turn-based Flutter web game called "Interplanetary Wars" where a player and an enemy take turns attacking each other. Each side starts with 100 HP. Attacks do random damage, and the first to reduce the opponent to 0 wins. Include a combat log, buttons for player actions, and turn indicator. Enemy automatically attacks each turn.
