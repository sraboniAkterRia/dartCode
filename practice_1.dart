import 'dart:io';

void main() {
  // Q1. Print your name
  {
    print('Sraboni Akter Ria');
  }

  // Q2. Print with single and double quotes
  {
    print('Hello I am "John Doe"');
    print("Hello I'am \"John Doe\"");
  }

  // Q3. Constant int with value 7
  {
    const int number = 7;
    print(number);
  }

  // Q4. Simple interest
  {
    double p = 5000, t = 2, r = 5;
    double si = (p * t * r) / 100;
    print('Simple Interest = $si');
  }

  // Q5. Square of a number (user input)
  {
    stdout.write('Enter a number: ');
    int n = int.parse(stdin.readLineSync()!);
    print('Square = ${n * n}');
  }

  // Q6. Full name from first and last name
  {
    stdout.write('Enter first name: ');
    String first = stdin.readLineSync()!;
    stdout.write('Enter last name: ');
    String last = stdin.readLineSync()!;
    print('Full name: $first $last');
  }

  // Q7. Quotient and remainder
  {
    int a = 17, b = 5;
    print('Quotient = ${a ~/ b}');
    print('Remainder = ${a % b}');
  }

  // Q8. Swap two numbers
  {
    int a = 10, b = 20;
    print('Before: a=$a, b=$b');
    int temp = a;
    a = b;
    b = temp;
    print('After: a=$a, b=$b');
  }

  // Q9. Remove all whitespace from a String
  {
    String text = 'Dart is   fun to learn';
    print(text.replaceAll(' ', ''));
  }

  // Q10. Convert String to int
  {
    String text = '123';
    int number = int.parse(text);
    print(number + 1);
  }

  // Q11. Split the bill
  {
    double totalBill = 2400;
    int people = 4;
    print('Each pays: ${totalBill / people}');
  }

  // Q12. Time to reach office in minutes
  {
    double distance = 25, speed = 40;
    double minutes = (distance / speed) * 60;
    print('Time = $minutes minutes');
  }
}