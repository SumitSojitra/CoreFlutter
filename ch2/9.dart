import 'dart:io';

void main() {
    print("Enter 1 for addition");
    print("Enter 2 for substraction");
    print("Enter 3 for multiplicartion");
    print("Enter 4 for dividion");

    print("Enter your choice : ");
    int? choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("Enter value of A : ");
        int? a = int.parse(stdin.readLineSync()!); 
        print("Enter value of B : ");
        int? b = int.parse(stdin.readLineSync()!); 

        print("Addition of $a and $b is : ${a+b}");
        break;

      case 2:
        print("Enter value of A : ");
        int? a = int.parse(stdin.readLineSync()!); 
        print("Enter value of B : ");
        int? b = int.parse(stdin.readLineSync()!); 

        print("Substraction of $a and $b is : ${a-b}");
        break;

      case 3:
        print("Enter value of A : ");
        int? a = int.parse(stdin.readLineSync()!); 
        print("Enter value of B : ");
        int? b = int.parse(stdin.readLineSync()!); 

        print("Multiplication of $a and $b is : ${a*b}");
        break;

      case 4:
        print("Enter value of A : ");
        int? a = int.parse(stdin.readLineSync()!); 
        print("Enter value of B : ");
        int? b = int.parse(stdin.readLineSync()!); 

        print("Division of $a and $b is : ${a/b}");
        break;
        
      default:
        print("Invalid choice...");
    }
}