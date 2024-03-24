import 'dart:io';

// Interface definition
abstract class Printable {
  void printInfo();
}

// Parent class using inheritance
class Animal {
  void makeSound() {
    print('Animal sound');
  }
}

// Child class inheriting from Animal
class Dog extends Animal {
  @override
  void makeSound() {
    print('Woof woof');
  }
}

// Class implementing the Printable interface
class Document implements Printable {
  @override
  void printInfo() {
    print('Printing document');
  }
}

// Child class overriding a method from the parent
class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow');
  }
}

void main() {
  // Instance initialized with data from a file
  File file = File('data.txt');
  List<String> lines = file.readAsLinesSync();
  for (String line in lines) {
    print(line);
  }

  // Method demonstrating the use of a loop
  List<int> numbers = [1, 2, 3, 4, 5];
  void printNumbers() {
    for (int number in numbers) {
      print(number);
    }
  }

  // Creating instances and demonstrating features
  Dog dog = Dog();
  dog.makeSound();

  Document document = Document();
  document.printInfo();

  Cat cat = Cat();
  cat.makeSound();

  printNumbers();
}