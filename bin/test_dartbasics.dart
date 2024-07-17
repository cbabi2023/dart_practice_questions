/*

Write a Dart program that accepts integers into a list until 0 is entered. Generate separate

lists for odd and even numbers from that list and Print the greatest number in the main list. */

// Declaring the empty list
// import 'dart:io';

// List storingList = [];
// List oddList = [];
// List evenList = [];

// // The Integer storing Function until 'ZERO'
// void storingFunction() {
//   stdout.write("Enter a Integer : ");
//   int newInteger = int.parse(stdin.readLineSync()!);
//   storingList.add(newInteger);

//   // Making a loop for repeat entering
//   if (newInteger != 0) {
//     storingFunction();
//   } else {
//     print("The List is : $storingList");
//   }
// }

// // Main Function
// void main() {
//   // The storing function
//   storingFunction();
//   evenOddListFunction();
//   greatestNumber();
// }

// // Even & Odd Number List function
// evenOddListFunction() {
//   // Loop for spliting the odd Numbers
//   for (int i = 1; i <= storingList.length - 1; i++) {
//     if (storingList[i] % 2 == 0) {
//       evenList.add(storingList[i]);
//     } else {
//       oddList.add(storingList[i]);
//     }
//   }

//   print("The Even Number List : $evenList");
//   print("The Odd Number List : $oddList");
// }

// // Find the Greatest Number in the MainList

// greatestNumber() {
//   int greatestNumber = storingList[0];
//   for (int i = 0; i <= storingList.length - 1; i++) {
//     if (storingList[i] > greatestNumber) {
//       greatestNumber = storingList[i];
//     }
//   }
//   print("Greatest Number in the Main List : $greatestNumber");
// }

/* Create a banking application which have user registration , login, bank details, deposit and withdrawal option and print the curresponding result with proper balance , use functions 



sample output :-


Welcome to the Banking Application!

1. Register
2. Login
3. Exit

Enter your choice: 1

Enter your desired username: john_doe
Enter your password: 123456
Registration successful!

1. Register
2. Login
3. Exit

Enter your choice: 2

Enter your username: john_doe
Enter your password: 123456

Login successful!

Welcome, john_doe!

1. Bank Details
2. Deposit
3. Withdraw
4. Logout

Enter your choice: 1

Account Balance: $1000.00
1. Bank Details
2. Deposit
3. Withdraw
4. Logout
Enter your choice: 2
Enter the amount to deposit: 500.00
Deposit successful!
Account Balance: $1500.00
1. Bank Details
2. Deposit
3. Withdraw
4. Logout
Enter your choice: 3
Enter the amount to withdraw: 200.00
Withdrawal successful!
Account Balance: $1300.00
1. Bank Details
2. Deposit
3. Withdraw
4. Logout
Enter your choice: 4
Logged out successfully!
1. Register
2. Login
3. Exit
Enter your choice: 3
Goodbye! Thank you for using the Banking Application!


*/

import 'dart:io';

// Global variables
int? choice;
int? choiceBankservice;
Map storingMap = {};
int accountBalance = 1000;

// Main function
void main() {
  print("Welcome to the Banking Application!");
  mainDispaly();
}

// Main display Function
mainDispaly() {
  print("""

1. Register
2. Login
3. Exit

""");

  stdout.write("Enter your Choice : ");
  choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    registerFunction(); // Registration
  } else if (choice == 2) {
    loginFunction();
  } else if (choice == 3) {
    print("Goodbye! Thank you for using the Banking Application!");
  } else {
    print("Invalid Choice !");
    mainDispaly();
  }
}

// Storing function
storingFunction(username, password) {
  storingMap[username] = password;
}

// Register Function
registerFunction() {
  stdout.write("Enter your desired username: ");
  String userName = stdin.readLineSync()!;
  stdout.write("Enter your password: ");
  String passWord = stdin.readLineSync()!;

  if (userName.isNotEmpty && passWord.isNotEmpty) {
    print("Registration successful!");
    storingFunction(userName, passWord);
    mainDispaly();
  } else {
    print("Invalid username or Password");
    mainDispaly();
  }
}

// Login Function
loginFunction() {
  stdout.write("Enter you username : ");
  String userLoginName = stdin.readLineSync()!;
  stdout.write("Enter your password : ");
  String userLoginPassword = stdin.readLineSync()!;

  if (userLoginName.isNotEmpty && userLoginPassword.isNotEmpty) {
    if (loginCheck(userLoginName, userLoginPassword)) {
      print("Login Successful!");
      print("Welcome, $userLoginName");
      afterLogin();
    } else {
      print("The Login Details was Invalid");
      mainDispaly();
    }
  } else {
    print("Please Enter correct Details !");
    mainDispaly();
  }
}

// Function to check Login
bool loginCheck(String userName, String passWord) {
  if (storingMap.containsKey(userName) && storingMap[userName] == passWord) {
    return true;
  } else {
    return false;
  }
}

// After Login Function
afterLogin() {
  print("""

1. Bank Details
2. Deposit
3. Withdraw
4. Logout

""");

  stdout.write("Enter your Choice : ");
  choiceBankservice = int.parse(stdin.readLineSync()!);

  if (choiceBankservice == 1) {
    print("Account Balance = \$$accountBalance");
    afterLogin();
  } else if (choiceBankservice == 2) {
    stdout.write("Enter the amount to deposit : \$");
    int depositAmount = int.parse(stdin.readLineSync()!);

    // Total amount
    accountBalance = accountBalance + depositAmount;
    print("Deposit successful!");
    print("Account Balance: \$$accountBalance");

    afterLogin();
  } else if (choiceBankservice == 3) {
    stdout.write("Enter the amount to Withdraw : \$");
    int withdrawAmount = int.parse(stdin.readLineSync()!);

    // Total amount after withdraw
    if (accountBalance >= withdrawAmount) {
      accountBalance = accountBalance - withdrawAmount;
      print("Withdrawl successful!");
      print("Account Balance: \$$accountBalance");

      afterLogin();
    } else {
      print("Account Balace is Low for Withdraw!");
      print("Account Balance: \$$accountBalance");
      print("You need extra \$${withdrawAmount - accountBalance} ");
      afterLogin();
    }
  } else if (choiceBankservice == 4) {
    print("Logged out successfully! ");
    mainDispaly();
  }
}



