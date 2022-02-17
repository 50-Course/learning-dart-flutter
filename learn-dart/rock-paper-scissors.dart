/*
Rock Paper Scissors game implementation in dart

Game Logic:
  - if a user moves matches that of the AI, its a draw
  - otherwise,  
    - Paper wins against rock, Rock against scissors, Scissors against paper
    - anything outside this, it's a concede on the players part
*/

// dependencies
import 'dart:io';
import 'dart:math';

// constant for move
enum Move { rock, paper, scissors }

// entry-point
void main() {
  // random number generator
  final ranNum = Random();
  // continue unless stated otherwise
  while (true) {
    // print a message for the user and capture user input
    stdout.write('Enter your move:- Paper - p, Rock - r, Scissors - X: ');
    final input = stdin.readLineSync();

    // vaidate input else raise an error

    /*
    Setting game states
    */
    if (input == 'p' || input == 'r' || input == 'x') {
      var playerMove;
      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }

      // draw the AI move
      final random =
          ranNum.nextInt(3); // assign a random index 1-3 to represent
      // our enum states.
      final aiMove = Move.values[random];

      /*
      Implementing game logic
      */
      print('Your Move: $playerMove, \nAI Move: $aiMove');
      if (playerMove == aiMove) {
        print('You draw!');
      } else {
        if (playerMove == Move.paper && aiMove == Move.rock ||
            playerMove == Move.rock && aiMove == Move.scissors ||
            playerMove == Move.scissors && aiMove == Move.paper)
          print('You win!');
        else {
          print('You lose.');
        }
      }
    } else if (input == 'q') {
      // close the program
      break;
    } else {
      // invalid response from the user
      print('invalid input');
    }
  }
}
