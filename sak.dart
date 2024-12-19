import 'dart:io';

void main() {
  print('Welcome to the Dart Calculator!');

  // Loop until the user wants to quit
  while (true) {
    print('\nChoose an operation:');
    print('1. Addition');
    print('2. Subtraction');
    print('3. Multiplication');
    print('4. Division');
    print('5. Exit');

    stdout.write('Enter your choice: ');
    String? choice = stdin.readLineSync();

    if (choice == '5') {
      print('Exiting the calculator. Goodbye!');
      break;
    }

    stdout.write('Enter the first number: ');
    double? num1 = double.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Enter the second number: ');
    double? num2 = double.tryParse(stdin.readLineSync() ?? '');

    if (num1 == null || num2 == null) {
      print('Invalid input! Please enter valid numbers.');
      continue;
    }

    switch (choice) {
      case '1':
        print('Result: ${num1 + num2}');
        break;
      case '2':
        print('Result: ${num1 - num2}');
        break;
      case '3':
        print('Result: ${num1 * num2}');
        break;
      case '4':
        if (num2 == 0) {
          print('Error: Division by zero is not allowed.');
        } else {
          print('Result: ${num1 / num2}');
        }
        break;
      default:
        print('Invalid choice. Please select a valid operation.');
    }
  }
}
