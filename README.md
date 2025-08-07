# Connect Four (TDD Ruby CLI Game)

## 📜 Description
This is a **Connect Four** game built in Ruby as part of [The Odin Project](https://www.theodinproject.com/) curriculum, using **Test-Driven Development (TDD)** principles with RSpec. Two players take turns dropping pieces into a 6x7 board, aiming to be the first to connect four of their symbols horizontally, vertically, or diagonally.

## 🛠 Features
- 6x7 Connect Four board.
- Two-player mode (CLI).
- Alternate turns between players.
- Detects horizontal, vertical, and diagonal wins.
- Detects draw conditions.
- Input validation for column selection.
- Unicode symbols for game pieces.
- Fully tested with RSpec.

## 📂 Project Structure
```
Project-TDD-Connect-Four/
├── lib/
│   ├── board.rb       # Handles board logic and win detection
│   ├── game.rb        # Manages game flow and player turns
│   └── player.rb      # Player class
├── spec/
│   ├── board_spec.rb  # Tests for Board class
│   ├── game_spec.rb   # Tests for Game class
│   ├── player_spec.rb # Tests for Player class
│   └── spec_helper.rb # RSpec configuration
├── main.rb            # Entry point to run the game
└── rspec              # RSpec file
```

## 🚀 How to Run the Game
1. Clone this repository:
```bash
git clone https://github.com/EdgarAmpiire/Project-TDD-Connect-Four
cd Project-TDD-Connect-Four
```
2. Run the game:
```bash
ruby main.rb
```

## 🧪 Running Tests
To run all RSpec tests:
```bash
rspec
```

## 🧩 Example Gameplay
```
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
0 1 2 3 4 5 6
Player 1's turn (●)
Enter column (0-6):
```

## 📚 Learning Goals
- Practice writing tests before implementation (TDD).
- Learn to structure Ruby CLI applications.
- Gain experience with RSpec and testing game logic.
- Follow The Odin Project's approach to incremental, test-driven development.

## 📝 License
This project is open source under the MIT License.
