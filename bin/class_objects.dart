// Objects and Classes

// class Person {
//   Person(String place, {this.age, required this.name});
//   Person.newConst({required this.name}) : super();
//   String name;
//   int? age;
//   void greet() {
//     print("Hello $name");
//   }
// }

// void main() {
//   Person obj1 = Person("ekm", name: "abi");
//   Person obj2 = Person.newConst(name: "name");
//   print(obj2.name);
//   print(obj1.age);
// }

// Create a class Laptop with properties brand and model.
// Define a named constructor Laptop.gaming that sets the brand to a specified value and the model to "Gaming".
// Create an instance of the Laptop class using this named constructor and print the brand and model

// class Laptop {
//   String brand;
//   String? model;
//   Laptop(this.brand);

//   Laptop.gaming({required this.brand}) {
//     model = "gaming";
//   }
// }

// void main() {
//   Laptop gamingLap = Laptop.gaming(brand: "HP");
//   print(gamingLap.brand);
//   print(gamingLap.model);
// }

// Inheritance

// class A {
//   String propertyOfA = "a";
// }

// class B extends A {
//   String propertyOfB = "b";
// }

// void main() {
//   B obj = B();
//   print(obj.propertyOfB);
//   print(obj.propertyOfA);
// }

// Example

// class Person {
//   Person(this.name, this.age) {
//     print("person");
//   }

//   String name = 'person';
//   int age = 0;
//   String place = 'place';
//   String phoneNumber = '1234567890';
// }

// class Employess extends Person {
//   Employess(String name, int age) : super(name, age);
//   String role = 'developer';
//   String sub = 'Flutter';
//   String exp = '';
//   String salary = '';
// }

// // class Student extends Person {
// //   String course = '';
// //   String batch = '';
// //   String marks = '';
// // }

// void main() {
//   Employess el = Employess("abi", 32);
//   print(el.role);
//   print(el.age);
// }

// class A {
//   String varA = 'a';

// }

// class B {
//   String varB = 'b';
// }

// class C {
//   String varC = 'c';
// }

// Overriding

// class A {
//   printA() {
//     print("varA");
//   }
// }

// class B extends A {
//   @override
//   printA() {
//     print("varB"); // @override new a function in another class when it is extends
//   }
// }

// void main() {
//   B obj = B();
//   obj.printA();

// }

// class A {
//   printA() {
//     print("varA");
//   }
// }

// class B extends A {
//   @override
//   printA() {
//     print("varB");
//     super.printA(); // assessing the parent class same function value.
//   }
// }

// void main() {
//   B obj = B();
//   obj.printA();
// }

class A {
  printA() {
    print("Hello ");
  }
}

class B extends A {
  @override
  printA() {
    print("hai");
    super.printA();
  }
}

class C extends B {
  @override
  printA() {
    print("Welcome");
    super.printA();
  }
}

void main() {
  C obj = C();
  obj.printA();
}
