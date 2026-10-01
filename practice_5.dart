import 'dart:io';

// Q1. Laptop class
class Laptop {
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);
}

// Q2. House class
class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);
}

// Q3. Enum for gender
enum Gender { male, female, others }

// Q4. Animal and Cat (inheritance)
class Animal {
  int id;
  String name;
  String color;

  Animal(this.id, this.name, this.color);
}

class Cat extends Animal {
  String sound;

  Cat(int id, String name, String color, this.sound) : super(id, name, color);
}

// Q5. Camera with private properties, getter and setter
class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);

  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  double get price => _price;

  set id(int value) => _id = value;
  set brand(String value) => _brand = value;
  set color(String value) => _color = value;
  set price(double value) => _price = value;
}

// Q6. Interface Bottle and CokeBottle with factory constructor
abstract class Bottle {
  void open();

  factory Bottle() {
    return CokeBottle();
  }
}

class CokeBottle implements Bottle {
  @override
  void open() {
    print('Coke bottle is opened');
  }
}

// Q7. Simple quiz application
class Question {
  String text;
  List<String> options;
  int correctIndex;

  Question(this.text, this.options, this.correctIndex);
}

class Quiz {
  List<Question> questions = [];
  int score = 0;

  void addQuestion(Question q) {
    questions.add(q);
  }

  void play() {
    for (int i = 0; i < questions.length; i++) {
      Question q = questions[i];
      print('\nQ${i + 1}. ${q.text}');
      for (int j = 0; j < q.options.length; j++) {
        print('  ${j + 1}) ${q.options[j]}');
      }
      stdout.write('Your answer: ');
      int answer = int.tryParse(stdin.readLineSync()!) ?? 0;

      if (answer - 1 == q.correctIndex) {
        print('Correct!');
        score++;
      } else {
        print('Wrong! Answer: ${q.options[q.correctIndex]}');
      }
    }
  }

  void showScore() {
    print('\nYour score: $score / ${questions.length}');
  }
}

void main() {
  // Q1
  Laptop l1 = Laptop(1, 'Dell', 8);
  Laptop l2 = Laptop(2, 'HP', 16);
  Laptop l3 = Laptop(3, 'Lenovo', 8);
  print('${l1.id} ${l1.name} ${l1.ram}GB');
  print('${l2.id} ${l2.name} ${l2.ram}GB');
  print('${l3.id} ${l3.name} ${l3.ram}GB');

  // Q2
  List<House> houses = [];
  houses.add(House(1, 'Green Villa', 5000000));
  houses.add(House(2, 'Blue Home', 7500000));
  houses.add(House(3, 'Sunrise Flat', 3500000));
  for (House h in houses) {
    print('${h.id} ${h.name} ${h.price}');
  }

  // Q3
  for (Gender g in Gender.values) {
    print(g.name);
  }

  // Q4
  Cat cat = Cat(1, 'Tom', 'White', 'Meow');
  print('${cat.id} ${cat.name} ${cat.color} ${cat.sound}');

  // Q5
  Camera c1 = Camera(1, 'Canon', 'Black', 55000);
  Camera c2 = Camera(2, 'Nikon', 'Silver', 62000);
  Camera c3 = Camera(3, 'Sony', 'Black', 70000);
  c2.price = 60000; // setter
  List<Camera> cameras = [c1, c2, c3];
  for (Camera c in cameras) {
    print('${c.id} ${c.brand} ${c.color} ${c.price}');
  }

  // Q6
  Bottle bottle = Bottle();
  bottle.open();

  // Q7
  Quiz quiz = Quiz();
  quiz.addQuestion(Question('Which language is used in Flutter?', ['Java', 'Dart', 'Python'], 1));
  quiz.addQuestion(Question('What is 5 + 3?', ['7', '8', '9'], 1));
  quiz.addQuestion(Question('Which keyword makes a constant?', ['final', 'var', 'const'], 2));
  quiz.play();
  quiz.showScore();
}