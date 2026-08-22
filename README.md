# ⚡ Neon Escape

A fast-paced 2D survival game developed in Godot using GDScript.

The goal is simple: survive as long as possible, collect Energy Orbs to increase your score, and use your dash ability to escape dangerous situations.

## 📸 Screenshots

### Start Screen
![Neon Escape Start Screen](<img width="1152" height="640" alt="start-screen" src="https://github.com/user-attachments/assets/468aaf0c-d28d-4207-8539-9a1434010b14" />
)

### Gameplay
![Neon Escape Gameplay](<img width="1159" height="649" alt="gameplay" src="https://github.com/user-attachments/assets/6592b431-7209-45be-b031-4b59e951a3eb" />
)

### Game Over
![Neon Escape Game Over](<img width="1146" height="647" alt="image" src="https://github.com/user-attachments/assets/be8ae7b0-32c2-4567-893f-21c51f6e5ddb" />
)


## 🎮 Gameplay

- 🔵 Collect Energy Orbs to increase your score
- 🔴 Avoid incoming enemies
- ⚡ Use Dash to quickly escape danger
- ❤️ Manage your health and survive
- 🏆 High score is automatically saved
- 🔄 Restart the game after Game Over
- 🎯 Increasing difficulty through enemy spawning

## 🕹️ Controls

| Key | Action |
|-----|--------|
| W / A / S / D | Move |
| Space | Dash |

## 🛠️ Built With

- **Godot Engine 4.7.1**
- **GDScript**
- **Godot 2D Node System**
- CharacterBody2D
- Area2D
- CollisionShape2D
- UI / Control Nodes
- FileAccess for high-score saving

## 🧠 Features & Systems

### Player System
The player uses `CharacterBody2D` for movement and supports directional movement, health, and a dash mechanic with a cooldown.

### Enemy System
Enemies are spawned dynamically and move toward the player, creating an increasingly challenging survival experience.

### Energy Orb System
Energy Orbs use `Area2D` collision detection. When collected, they increase the player's score and relocate to another position.

### Score & High Score
The game tracks the current score and stores the best score locally using Godot's `FileAccess` system.

### Game Over System
When the player's health reaches zero, the game stops enemy movement and displays the final score and best score.

### Start Menu
The game includes a starting screen containing:
- Game title
- Controls
- Gameplay instructions
- Developer credits

## 📁 Project Structure

```text
Neon-Escape/
├── Game.tscn
├── Enemy.tscn
├── project.godot
├── game.gd
├── player.gd
├── enemy.gd
├── enemy_spawner.gd
├── energy_orb.gd
├── export_presets.cfg
└── icon.svg
```
## 📸 Gameplay

A short gameplay demonstration of Neon Escape is available here:

[▶️ Watch Gameplay Video](https://youtu.be/OMkVXeLFG2k)

## 🚀 Future Improvements

Planned improvements for future versions include:

- 🎵 Background music and sound effects
- ✨ More visual effects and animations
- 👾 Additional enemy types
- ⚡ More power-ups and abilities
- 📈 More advanced difficulty progression
- 🌐 Online leaderboard
- 🗺️ Additional maps and gameplay environments

## 👨‍💻 Developer

**Chaitanya Goel**

B.Tech CSE — 1st Year  
Graphic Era Deemed To Be University

Neon Escape was designed and developed as a personal game development project to explore 2D game development, gameplay systems, scripting, collision detection, UI design, and game-state management.

## 📚 What I Learned

Through this project, I gained practical experience with:

- Writing gameplay logic using GDScript
- Working with Godot's node and scene system
- Implementing player movement and dash mechanics
- Handling collisions and Area2D interactions
- Creating an enemy spawning system
- Managing game states such as Start, Playing, and Game Over
- Building UI elements and menus
- Saving and loading persistent data
- Debugging and iterating on gameplay mechanics

## 📄 License

This project is currently intended as a personal portfolio and learning project.

## ⭐ Acknowledgements

Built using the Godot Engine.

---

⭐ Thanks for checking out Neon Escape!
