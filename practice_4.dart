import 'dart:io';

void main() {
  // Q1. List of names
  {
    List<String> names = ['Ria', 'Sara', 'Anika', 'Mim'];
    for (String name in names) {
      print(name);
    }
  }

  // Q2. Set of fruits
  {
    Set<String> fruits = {'Apple', 'Mango', 'Banana', 'Orange'};
    for (String fruit in fruits) {
      print(fruit);
    }
  }

  // Q3. Read expenses and print total
  {
    stdout.write('How many expenses? ');
    int count = int.parse(stdin.readLineSync()!);
    List<double> expenses = [];
    for (int i = 1; i <= count; i++) {
      stdout.write('Enter expense $i: ');
      expenses.add(double.parse(stdin.readLineSync()!));
    }
    double total = 0;
    for (double e in expenses) {
      total += e;
    }
    print('Total = $total');
  }

  // Q4. Empty list "days" using add()
  {
    List<String> days = [];
    days.add('Saturday');
    days.add('Sunday');
    days.add('Monday');
    days.add('Tuesday');
    days.add('Wednesday');
    days.add('Thursday');
    days.add('Friday');
    print(days);
  }

  // Q5. Friend names starting with "a" using where
  {
    List<String> friends = ['Anika', 'Rafi', 'Arif', 'Sumi', 'Nabila', 'Tania', 'Alif'];
    var result = friends.where((name) => name.toLowerCase().startsWith('a'));
    print(result);
  }

  // Q6. Map with update
  {
    Map<String, dynamic> person = {
      'name': 'Ria',
      'address': 'Sylhet',
      'age': 22,
      'country': 'Bangladesh',
    };
    person['country'] = 'Canada';
    person.forEach((key, value) {
      print('$key : $value');
    });
  }

  // Q7. Map keys with length 4 using where
  {
    Map<String, String> contact = {
      'name': 'Ria',
      'phone': '01700000000',
    };
    var keys = contact.keys.where((key) => key.length == 4);
    print(keys);
  }

  // Q8. Simple to-do app
  {
    List<String> tasks = [];
    bool running = true;

    while (running) {
      print('\n1. Add task');
      print('2. Remove task');
      print('3. View tasks');
      print('4. Exit');
      stdout.write('Choose: ');
      String choice = stdin.readLineSync()!;

      if (choice == '1') {
        stdout.write('Enter task: ');
        tasks.add(stdin.readLineSync()!);
        print('Task added');
      } else if (choice == '2') {
        if (tasks.isEmpty) {
          print('No tasks to remove');
        } else {
          for (int i = 0; i < tasks.length; i++) {
            print('${i + 1}. ${tasks[i]}');
          }
          stdout.write('Enter task number to remove: ');
          int n = int.parse(stdin.readLineSync()!);
          if (n >= 1 && n <= tasks.length) {
            tasks.removeAt(n - 1);
            print('Task removed');
          } else {
            print('Invalid number');
          }
        }
      } else if (choice == '3') {
        if (tasks.isEmpty) {
          print('No tasks yet');
        }
        for (int i = 0; i < tasks.length; i++) {
          print('${i + 1}. ${tasks[i]}');
        }
      } else if (choice == '4') {
        running = false;
      } else {
        print('Invalid choice');
      }
    }
  }
}