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

## 📦 CI/CD Pipeline for GitHub Pages Deployment

This project includes a CI/CD pipeline to automatically deploy the Flutter web app to GitHub Pages using GitHub Actions.

### Setting Up the CI/CD Pipeline

1. **Create a `gh-pages` branch**:
   ```sh
   git checkout --orphan gh-pages
   git reset --hard
   git commit --allow-empty -m "Initialize gh-pages branch"
   git push origin gh-pages
   git checkout main
   ```

2. **Add the GitHub Actions workflow file**:
   The workflow file is located at `/.github/workflows/deploy.yml`. It defines the CI/CD pipeline for deploying the Flutter app to GitHub Pages.

3. **Add the deployment script**:
   The deployment script is located at `/scripts/deploy.sh`. It builds the Flutter web app and pushes the build output to the `gh-pages` branch.

4. **Configure Flutter web build settings**:
   The configuration file is located at `/flutter_web_build.yaml`. It contains settings for the Flutter web build, such as the target platform and build directory.

### Manually Deploying the Flutter App to GitHub Pages

If you need to manually deploy the Flutter app to GitHub Pages, follow these steps:

1. **Build the Flutter web app**:
   ```sh
   flutter build web
   ```

2. **Navigate to the build output directory**:
   ```sh
   cd build/web
   ```

3. **Initialize a new Git repository**:
   ```sh
   git init
   ```

4. **Configure Git user**:
   ```sh
   git config user.name "your-username"
   git config user.email "your-email@example.com"
   ```

5. **Add all files to the new repository**:
   ```sh
   git add .
   ```

6. **Commit the changes**:
   ```sh
   git commit -m "Deploy to GitHub Pages"
   ```

7. **Force push to the `gh-pages` branch**:
   ```sh
   git push --force "https://${GITHUB_ACTOR}:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git" master:gh-pages
   ```
