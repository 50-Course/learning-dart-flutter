/*
  Simple calculator implementation in Dart language

  Performs basic arithemetic operation
*/

// dependencies
import 'dart:math';
import 'dart:io';

// operation constants
enum Operation { add, multiply, divide, minus }

// program entry-point
void main() {
  print('Welcome to this basic calculator');
  String options = """ 
    What would you like to do today?
    1. Add
    2. Mulitply
    3. Divide
    4. Subtract
    """;

  prompt(options);
  var num1 = 13;
  var num2 = 5;
  var choice = stdin.readLineSync();

  switch (choice) {
    case '1':
      print('Output: ${num1 + num2}');
      break;
    case '2':
      print('Output: ${num1 * num2}');
      break;
    case '3':
      print('Output: ${num1 / num2}');
      break;
    case '4':
      print('Output: ${num1 - num2}');
      break;
    default:
      print('invalid input');
  }
}

/// Prompts the user for an input of type String
///
/// Returns the input of the user
String? Function(String promptTxt) prompt = (String promptTxt) {
  print(promptTxt);
};
