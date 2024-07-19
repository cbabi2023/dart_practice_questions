// Loop Practice Questions

//Right Half Pyramid Pattern in Dart program

// Using star '*'

// import 'dart:io';

// void main() {
//   int size = 5;
//   for (int row = 1; row <= size; row++) {
//     for(int col = 1;col<=row;col++){
//       stdout.write(" *");
//     }
//     print(" "); // for spacing after each iteration
//   }

// }

// Using Numbers

// import 'dart:io';

// void main() {
//   int size = 10;
//   int number = 1;
//   for (int row = 1; row <= size; row++) {
//     for (int col = 1; col <= row; col++) {
//       stdout.write(" $number");
//       number++;
//     }
//     print(" ");
//   }
// }

// Line by sequence

// import 'dart:io';

// void main() {
//   int size = 10;

//   for (int row = 1; row <= size; row++) {
//     for (int col = 1; col <= row; col++) {
//       stdout.write(" $col"); // coloum sequence
//       // stdout.write(" $row"); // row sequence

//     }
//     print(" ");
//   }
// }

// ABC sequence

// import 'dart:io';

// void main() {
//   int size = 5;

//   String english = 'ABCDEFGHIGKLMNOPQRSTUVWXYZ';

//   for (int row = 0; row <= size; row++) {
//     for (int col = 0; col <= row; col++) {
//       stdout.write(" ${english[col]}");
//     }
//     print(" ");
//   }
// }

// import 'dart:io';

// void main() {
//   int size = 5;
//   int indexOf = 0;

//   String english = 'ABCDEFGHIGKLMNOPQRSTUVWXYZ';

//   for (int row = 0; row <= size; row++) {
//     for (int col = 0; col <= row; col++) {
//       int currentIndex = indexOf + col;
//       stdout.write(" ${english[currentIndex]}");
//     }
//     indexOf++;
//     print(" ");
//   }
// }

// Left Half Pyramid Pattern in  Dart Program

// import 'dart:io';

// void main() {
//   for (int row = 1; row <= 5; row++) {
//     String st = "";
//     for (int col = (5 - row); col > 0; col--) {
//       st += " ";
//     }
//     print(" ");
//     for (int col = 0; col < row; col++) {
//       st += "*";
//     }
//     stdout.write(st);
//   }

// }

// void main() {
//   int rows = 5;
//   for (int i = 0; i < rows; i++) {
//     String spaces = " " * (2 * (rows - i) - 1);
//     String stars = "* " * (i + 1);
//     print(spaces + stars);
//   }

//   print("werthuht $rows$rows");
// }

// Equilateral Triangle

// import 'dart:io';

// void main() {
//   int size = 5;

//   for (int row = 1; row <= size; row++) {
//     for (int col = 1; col <= size - row; col++) {
//       stdout.write("  ");
//     }
//     for (int col = 1; col <= 2 * row - 1;col++){
//       stdout.write("* ");
//     } print(" ");
//   }
// }

// import 'dart:io';

// void main() {
//   int size = 5;

//   for (int row = 1; row <= size; row++) {
//     for (int col = 1; col <= size * 2 - 1; col++) {
//       if (col > size - row && col < size + row) {
//         stdout.write("* ");
//       } else {
//         stdout.write("  ");
//       }
//     }
//     print(" ");
//   }
// }

import 'dart:io';

void main() {
  pattern2(5);
}

// Right Triangle Triangle simple code
void pattern1(int size) {
  for (int row = 1; row <= size; row++) {
    for (int col = 1; col <= row; col++) {
      stdout.write("* ");
    }
    print(" ");
  }
}

void pattern2(int size) {
  for (int row = 1; row <= size; row++) {
    for (int col = 1; col <= size - row + 1; col++) {
      stdout.write("*");
    }
    print(" ");
  }
}
