import 'dart:io';

void main() {
  // Q1. Odd or even
  {
    stdout.write('Enter a number: ');
    int n = int.parse(stdin.readLineSync()!);
    if (n % 2 == 0) {
      print('Even');
    } else {
      print('Odd');
    }
  }

  // Q2. Vowel or consonant
  {
    stdout.write('Enter a character: ');
    String ch = stdin.readLineSync()!.toLowerCase();
    if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
      print('Vowel');
    } else {
      print('Consonant');
    }
  }

  // Q3. Positive, negative or zero
  {
    stdout.write('Enter a number: ');
    int n = int.parse(stdin.readLineSync()!);
    if (n > 0) {
      print('Positive');
    } else if (n < 0) {
      print('Negative');
    } else {
      print('Zero');
    }
  }

  // Q4. Print your name 100 times
  {
    for (int i = 1; i <= 100; i++) {
      print('Sraboni Akter Ria');
    }
  }

  // Q5. Sum of natural numbers
  {
    stdout.write('Enter n: ');
    int n = int.parse(stdin.readLineSync()!);
    int sum = 0;
    for (int i = 1; i <= n; i++) {
      sum += i;
    }
    print('Sum = $sum');
  }

  // Q6. Multiplication table of 5
  {
    for (int i = 1; i <= 10; i++) {
      print('5 x $i = ${5 * i}');
    }
  }

  // Q7. Multiplication tables of 1-9
  {
    for (int n = 1; n <= 9; n++) {
      for (int i = 1; i <= 10; i++) {
        print('$n x $i = ${n * i}');
      }
      print('');
    }
  }

  // Q8. Simple calculator
  {
    stdout.write('Enter first number: ');
    double a = double.parse(stdin.readLineSync()!);
    stdout.write('Enter second number: ');
    double b = double.parse(stdin.readLineSync()!);
    stdout.write('Enter operator (+, -, *, /): ');
    String op = stdin.readLineSync()!;

    if (op == '+') {
      print('Result = ${a + b}');
    } else if (op == '-') {
      print('Result = ${a - b}');
    } else if (op == '*') {
      print('Result = ${a * b}');
    } else if (op == '/') {
      if (b == 0) {
        print('Cannot divide by zero');
      } else {
        print('Result = ${a / b}');
      }
    } else {
      print('Invalid operator');
    }
  }

  // Q9. Print 1 to 100 but not 41
  {
    for (int i = 1; i <= 100; i++) {
      if (i == 41) continue;
      print(i);
    }
  }
}