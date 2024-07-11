// 1. Register
// 2. Login
// 3. Exit
// Select an option: 1
// Enter a username: john_doe
// Enter a password: 1234
// User registered successfully!

// 1. Register
// 2. Login
// 3. Exit
// Select an option: 2
// Enter your username: john_doe
// Enter your password: 1234
// Login successful! Welcome, john_doe.

// 1. Logout
// 2. Exit
// Select an option: 1
// Logged out successfully.

// 1. Register
// 2. Login
// 3. Exit
// Select an option: 2
// Enter your username: jane_doe
// Enter your password: wrong_password
// Invalid username or password,try again

// 1. Register
// 2. Login
// 3. Exit
// Select an option: 4

// Invalid option. Please try again.

// 1. Register
// 2. Login
// 3. Exit
// Select an option: 3

// Thank you

// import 'dart:io';

// // Global variables (maps)

// // username and passwords
// Map userNamePassword = {};

// // Username and Password storing Function
// storingFunction(String userName, String passWord) {
//   userNamePassword[userName] = passWord;
// }

// void main() {
//   displayFunction();
// }

// displayFunction() {
//   stdout.write(""" Choose one :

//   1. Register
//   2. Login
//   3. Exit

//   Enter your choice :  """);
//   int choice = int.parse(stdin.readLineSync()!);

//   if (choice == 1) {
//     registerFunction();
//   } else if (choice == 2) {
//     loginFunction();
//   } else if (choice == 3) {
//     print("Thank You.");
//   } else {
//     print("Invalid option. Please try again.");
//     displayFunction();
//   }
// }

// // Registeration Function
// registerFunction() {
//   stdout.write("Enter the username : ");
//   String userName = stdin.readLineSync()!;
//   stdout.write("Enter the password : ");
//   String passWord = stdin.readLineSync()!;

//   // Storing user name and passowrd
//   storingFunction(userName, passWord);

//   if (userName.isNotEmpty && passWord.isNotEmpty) {
//     print("User registered successfully!");
//     print(userNamePassword);
//     displayFunction();
//   } else {
//     print("The value is Empty or something error occured. ");
//     displayFunction();
//   }
// }

// // Function to check is there the useranem and password
// bool checkValues(String username, String password) {
//   if (userNamePassword.containsKey(username) &&
//       userNamePassword[username] == password) {
//     return true;
//   } else {
//     return false;
//   }
// }

// // Login Function
// loginFunction() {
//   stdout.write("Enter the username : ");
//   String userName = stdin.readLineSync()!;
//   stdout.write("Enter the password : ");
//   String passWord = stdin.readLineSync()!;

//   if (userName.isNotEmpty && passWord.isNotEmpty) {
//     if (checkValues(userName, passWord)) {
//       print("Login successful! Welcome, $userName .");
//       afterLogin();
//     } else {
//       print("Invalid username or password,try again");
//       displayFunction();
//     }
//   }
// }

// // After login function
// afterLogin() {
//   print("""Enter your Choice :

//   1. Log out
//   2. Exit """);

//   stdout.write("Enter your choice : ");
//   int choice = int.parse(stdin.readLineSync()!);

//   // ignore: unrelated_type_equality_checks
//   if (choice == 1) {
//     print("Logged out successfully.");
//     displayFunction();
//   } else if (choice == 2) {
//     print("");
//   } else {
//     print("Wrong input ");
//     afterLogin();
//   }
// }

// sir answer

import 'dart:io';

String registeredName = "";
String registeredPass = "";
void main() {
  for (;;) {
    print("""
    1. Registration
    2. Login
    3. Exit
""");
    stdout.write("Enter your Choice : ");
    int userChoice = int.parse(stdin.readLineSync()!);
    if (userChoice == 1) {
      Map registerdData = register();
      print(registerdData);
    } else if (userChoice == 2) {
      print("Login Now");
    } else if (userChoice == 3) {
      print("Thank you");
      break;
    } else {
      print("Invalid choice, Try Again");
    }
  }
}

Map register() {
  stdout.write("Enter user name : ");
  String userName = stdin.readLineSync()!;
  stdout.write("Enter pass : ");
  String pass = stdin.readLineSync()!;
  if (userName.isNotEmpty && pass.isNotEmpty) {
    registeredName = userName;
    registeredPass = pass;
    print("User registered successfully!");
  } else {
    print("Failed to register Try again");
  }

  return {"name": userName, "pass": pass};
}
