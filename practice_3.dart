import 'dart:math';

// Q1. Print your name using a function
void printName() {
  print('Sraboni Akter Ria');
}

// Q2. Print even numbers between an interval
void printEven(int start, int end) {
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) print(i);
  }
}

// Q3. greet function
void greet(String name) {
  print('Hello, $name');
}

// Q4. Random password
String generatePassword(int length) {
  const chars =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789@#\$%&*';
  Random random = Random();
  String password = '';
  for (int i = 0; i < length; i++) {
    password += chars[random.nextInt(chars.length)];
  }
  return password;
}

// Q5. Area of a circle
double circleArea(double r) {
  const double pi = 3.14159;
  return pi * r * r;
}

// Q6. Reverse a String
String reverse(String text) {
  String result = '';
  for (int i = text.length - 1; i >= 0; i--) {
    result += text[i];
  }
  return result;
}

// Q7. Power of a number
int power(int base, int exp) {
  int result = 1;
  for (int i = 0; i < exp; i++) {
    result *= base;
  }
  return result;
}

// Q8. add function
int add(int a, int b) {
  return a + b;
}

// Q9. maxNumber function
int maxNumber(int a, int b, int c) {
  int largest = a;
  if (b > largest) largest = b;
  if (c > largest) largest = c;
  return largest;
}

// Q10. isEven function
bool isEven(int n) {
  return n % 2 == 0;
}

// Q11. createUser with default isActive = true
void createUser(String name, int age, {bool isActive = true}) {
  print('Name: $name, Age: $age, Active: $isActive');
}

// Q12. calculateArea with default values 1
double calculateArea({double length = 1, double width = 1}) {
  return length * width;
}

void main() {
  printName(); // Q1
  printEven(1, 20); // Q2
  greet('John'); // Q3
  print(generatePassword(10)); // Q4
  print(circleArea(7)); // Q5
  print(reverse('Dart')); // Q6
  print('5^3 = ${power(5, 3)}'); // Q7
  print(add(4, 6)); // Q8
  print(maxNumber(3, 9, 5)); // Q9
  print(isEven(8)); // Q10
  print(isEven(7));
  createUser('Ria', 22); // Q11
  createUser('Rahim', 25, isActive: false);
  print(calculateArea()); // Q12
  print(calculateArea(length: 5, width: 4));
}